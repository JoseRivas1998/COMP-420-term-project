package edu.csuci.comp420term.data.mysqlrepos;

import edu.csuci.comp420term.data.ConnectionBuilder;
import edu.csuci.comp420term.entities.Nature;
import edu.csuci.comp420term.repos.NatureRepository;
import edu.csuci.comp420term.utils.EntityCache;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class MySQLNatureRepository implements NatureRepository {

    private static final String SELECT_NATURE_BY_ID = "SELECT * FROM NATURE WHERE NATURE_ID = ? LIMIT 1";
    private static final String SELECT_ALL_NATURE = "SELECT * FROM NATURE ORDER BY NATURE_NAME";
    public static final String CALL_GET_NATURES_THAT_INCREASE_STAT = "{CALL get_natures_that_increase_stat(?)}";
    public static final String CALL_GET_NATURES_THAT_DECREASE_STAT = "{CALL get_natures_that_decrease_stat(?)}";
    private final EntityCache<Integer, Nature> natureCache;
    private final EntityCache<Integer, List<Nature>> statNatureIncreaseCache;
    private final EntityCache<Integer, List<Nature>> statNatureDecreaseCache;

    public MySQLNatureRepository() {
        natureCache = new EntityCache<>();
        statNatureIncreaseCache = new EntityCache<>();
        statNatureDecreaseCache = new EntityCache<>();
    }

    @Override
    public Nature findById(int id) throws SQLException {
        final Optional<Nature> cachedNature = natureCache.get(id);
        if (cachedNature.isPresent()) {
            return cachedNature.get();
        }
        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement selectStatement = connection.prepareStatement(SELECT_NATURE_BY_ID)) {
            selectStatement.setInt(1, id);
            try (ResultSet resultSet = selectStatement.executeQuery()) {
                verifyNatureExistsInResultSet(id, resultSet);
                final Nature nature = buildNatureFromResultSet(resultSet);
                cacheNature(nature);
                return nature;
            }
        }
    }

    private Nature buildNatureFromResultSet(ResultSet resultSet) throws SQLException {
        final int natureId = resultSet.getInt("NATURE_ID");
        final String natureName = resultSet.getString("NATURE_NAME");
        return new Nature(natureId, natureName);
    }

    private void cacheNature(Nature nature) {
        this.natureCache.cache(nature.id, nature);
    }

    private void verifyNatureExistsInResultSet(int id, ResultSet resultSet) throws SQLException {
        if (!resultSet.next()) throw new SQLException(String.format("Nature with id %d could not be found", id));
    }

    @Override
    public List<Nature> findAll() throws SQLException {
        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement selectStatement = connection.prepareStatement(SELECT_ALL_NATURE);
             ResultSet resultSet = selectStatement.executeQuery()) {
            return buildNatureListFromResultSet(resultSet);
        }
    }

    private List<Nature> buildNatureListFromResultSet(ResultSet resultSet) throws SQLException {
        List<Nature> natures = new ArrayList<>();
        while (resultSet.next()) {
            final Nature nature = buildNatureFromResultSet(resultSet);
            cacheNature(nature);
            natures.add(nature);
        }
        return natures;
    }

    @Override
    public List<Nature> findAllThatIncreaseStat(int statId) throws SQLException {
        return callNatureStoredProcedure(statId, statNatureIncreaseCache, CALL_GET_NATURES_THAT_INCREASE_STAT);
    }

    @Override
    public List<Nature> findAllThatDecreaseStat(int statId) throws SQLException {
        return callNatureStoredProcedure(statId, statNatureDecreaseCache, CALL_GET_NATURES_THAT_DECREASE_STAT);
    }

    private List<Nature> callNatureStoredProcedure(int statId, EntityCache<Integer, List<Nature>> natureCache, String storedProcedureCall) throws SQLException {
        final Optional<List<Nature>> cachedNatures = natureCache.get(statId);
        if (cachedNatures.isPresent()) {
            return cachedNatures.get();
        }
        try (Connection connection = ConnectionBuilder.buildConnection();
             CallableStatement callStatement = connection.prepareCall(storedProcedureCall)) {
            callStatement.setInt(1, statId);
            try (ResultSet resultSet = callStatement.executeQuery()) {
                final List<Nature> natures = buildNatureListFromResultSet(resultSet);
                natureCache.cache(statId, natures);
                return natures;
            }
        }
    }
}
