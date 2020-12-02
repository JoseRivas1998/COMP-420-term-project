package edu.csuci.comp420term.data.mysqlrepos;

import edu.csuci.comp420term.data.ConnectionBuilder;
import edu.csuci.comp420term.entities.Ability;
import edu.csuci.comp420term.repos.AbilityRepository;
import edu.csuci.comp420term.utils.EntityCache;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class MySQLAbilityRepository implements AbilityRepository {

    private static final String SELECT_ABILITY_BY_ID = "SELECT * FROM ABILITY WHERE ABILITY_ID = ? LIMIT 1";
    private static final String SELECT_ALL_ABILITIES = "SELECT * FROM ABILITY ORDER BY ABILITY_NAME";
    private final EntityCache<Integer, Ability> abilityCache;

    public MySQLAbilityRepository() {
        this.abilityCache = new EntityCache<>();
    }

    @Override
    public Ability findById(int id) throws SQLException {
        final Optional<Ability> cachedAbility = abilityCache.get(id);
        if (cachedAbility.isPresent()) {
            return cachedAbility.get();
        }
        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement selectStatement = connection.prepareStatement(SELECT_ABILITY_BY_ID)) {
            selectStatement.setInt(1, id);
            try (ResultSet resultSet = selectStatement.executeQuery()) {
                verifyAbilityExistsInResultSet(id, resultSet);
                final Ability ability = buildAbilityFromResultSet(resultSet);
                cacheAbility(ability);
                return ability;
            }
        }
    }

    private Ability buildAbilityFromResultSet(ResultSet resultSet) throws SQLException {
        final int abilityId = resultSet.getInt("ABILITY_ID");
        final String abilityName = resultSet.getString("ABILITY_NAME");
        final String abilityEffect = resultSet.getString("ABILITY_EFFECT");
        return new Ability(abilityId, abilityName, abilityEffect);
    }

    private void cacheAbility(Ability ability) {
        this.abilityCache.cache(ability.id, ability);
    }

    private void verifyAbilityExistsInResultSet(int id, ResultSet resultSet) throws SQLException {
        if (!resultSet.next()) throw new SQLException(String.format("Ability with id %d could not be found.", id));
    }

    @Override
    public List<Ability> findAll() throws SQLException {
        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement selectStatement = connection.prepareStatement(SELECT_ALL_ABILITIES);
             ResultSet resultSet = selectStatement.executeQuery()) {
            List<Ability> abilities = new ArrayList<>();
            while (resultSet.next()) {
                final Ability ability = buildAbilityFromResultSet(resultSet);
                cacheAbility(ability);
                abilities.add(ability);
            }
            return abilities;
        }
    }
}
