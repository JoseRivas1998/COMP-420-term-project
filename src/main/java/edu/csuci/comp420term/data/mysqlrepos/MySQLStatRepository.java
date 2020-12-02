package edu.csuci.comp420term.data.mysqlrepos;

import edu.csuci.comp420term.application.ApplicationContext;
import edu.csuci.comp420term.data.ConnectionBuilder;
import edu.csuci.comp420term.entities.BaseStat;
import edu.csuci.comp420term.entities.Nature;
import edu.csuci.comp420term.entities.Stat;
import edu.csuci.comp420term.repos.NatureRepository;
import edu.csuci.comp420term.repos.StatRepository;
import edu.csuci.comp420term.utils.EntityCache;
import edu.csuci.comp420term.utils.OrderedPair;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Duration;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

public class MySQLStatRepository implements StatRepository {

    private static final String SELECT_STAT_BY_ID = "SELECT * FROM STAT WHERE STAT_ID = ? LIMIT 1";
    private static final String SELECT_BASE_STAT_BY_POKEMON_AND_STAT = "SELECT *\n" +
            "FROM BASE_STAT\n" +
            "WHERE POKEMON_ID = ?\n" +
            "  AND STAT_ID = ?\n" +
            "ORDER BY STAT_ID;";
    public static final String SELECT_BASE_STATS_BY_POKEMON_ID = "SELECT * FROM BASE_STAT WHERE POKEMON_ID = ? ORDER BY STAT_ID;";
    private final EntityCache<Integer, Stat> statCache;
    private final EntityCache<OrderedPair<Integer>, BaseStat> baseStatCache;

    public MySQLStatRepository() {
        statCache = new EntityCache<>();
        baseStatCache = new EntityCache<>();
    }


    @Override
    public Stat findById(int id) throws SQLException {
        final Optional<Stat> cachedStat = statCache.get(id);
        if (cachedStat.isPresent()) {
            return cachedStat.get();
        }
        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement selectStatement = connection.prepareStatement(SELECT_STAT_BY_ID)) {
            selectStatement.setInt(1, id);
            try (ResultSet resultSet = selectStatement.executeQuery()) {
                verifyStatExistsInResultSet(id, resultSet);
                final Stat stat = buildStatFromResultSet(resultSet);
                cacheStat(stat);
                return stat;
            }
        }
    }

    private void cacheStat(Stat stat) {
        statCache.cache(stat.id, stat, Duration.ofHours(1));
    }

    private Stat buildStatFromResultSet(ResultSet resultSet) throws SQLException {
        final int statId = resultSet.getInt("STAT_ID");
        final String statName = resultSet.getString("STAT_NAME");
        final NatureRepository natureRepo = ApplicationContext.appContext().natureRepo;
        final List<Nature> naturesThatDecreaseStat = natureRepo.findAllThatDecreaseStat(statId);
        final List<Nature> naturesThatIncreaseStat = natureRepo.findAllThatIncreaseStat(statId);
        return new Stat(statId, statName, naturesThatDecreaseStat, naturesThatIncreaseStat);
    }

    private void verifyStatExistsInResultSet(int id, ResultSet resultSet) throws SQLException {
        if (!resultSet.next()) throw new SQLException(String.format("Stat of id %d was not found", id));
    }

    @Override
    public BaseStat pokemonBaseStat(int pokemonId, int statId) throws SQLException {
        final OrderedPair<Integer> baseStatIndex = new OrderedPair<>(pokemonId, statId);
        final Optional<BaseStat> cachedBaseStat = baseStatCache.get(baseStatIndex);
        if (cachedBaseStat.isPresent()) {
            return cachedBaseStat.get();
        }
        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BASE_STAT_BY_POKEMON_AND_STAT)) {
            preparedStatement.setInt(1, pokemonId);
            preparedStatement.setInt(2, statId);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                verifyBaseStatExistsInResultSet(pokemonId, statId, resultSet);
                final BaseStat baseStat = buildBaseStatFromResultSet(resultSet);
                cacheBaseState(baseStatIndex, baseStat);
                return baseStat;
            }
        }
    }

    private BaseStat buildBaseStatFromResultSet(ResultSet resultSet) throws SQLException {
        final int pokemonId = resultSet.getInt("POKEMON_ID");
        final Stat stat = findById(resultSet.getInt("STAT_ID"));
        final int statValue = resultSet.getInt("STAT_VALUE");
        return new BaseStat(pokemonId, stat, statValue);
    }

    private void cacheBaseState(OrderedPair<Integer> baseStatIndex, BaseStat baseStat) {
        baseStatCache.cache(baseStatIndex, baseStat);
    }

    private void verifyBaseStatExistsInResultSet(int pokemonId, int statId, ResultSet resultSet) throws SQLException {
        if (!resultSet.next()) {
            final String format = "Base stat for Pokemon %d and Stat %d could not be found";
            throw new SQLException(String.format(format, pokemonId, statId));
        }
    }

    @Override
    public List<BaseStat> pokemonBaseStats(int pokemonId) throws SQLException {
        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement selectStatement = connection.prepareStatement(SELECT_BASE_STATS_BY_POKEMON_ID)) {
            selectStatement.setInt(1, pokemonId);
            try (ResultSet resultSet = selectStatement.executeQuery()) {
                final List<BaseStat> baseStats = new ArrayList<>();
                while (resultSet.next()) {
                    final BaseStat baseStat = buildBaseStatFromResultSet(resultSet);
                    cacheBaseState(new OrderedPair<>(baseStat.pokemonId, baseStat.stat.id), baseStat);
                    baseStats.add(baseStat);
                }
                return baseStats;
            }
        }
    }
}
