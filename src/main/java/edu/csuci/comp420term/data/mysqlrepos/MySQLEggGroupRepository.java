package edu.csuci.comp420term.data.mysqlrepos;

import edu.csuci.comp420term.data.ConnectionBuilder;
import edu.csuci.comp420term.entities.EggGroup;
import edu.csuci.comp420term.repos.EggGroupRepository;
import edu.csuci.comp420term.utils.EntityCache;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class MySQLEggGroupRepository implements EggGroupRepository {

    private static final String SELECT_EGG_GROUP_BY_ID = "SELECT * FROM EGG_GROUP WHERE EGG_GROUP_ID = ? LIMIT 1";
    private static final String SELECT_ALL_EGG_GROUPS = "SELECT * FROM EGG_GROUP ORDER BY EGG_GROUP_NAME";
    private final EntityCache<Integer, EggGroup> eggGroupCache;

    public MySQLEggGroupRepository() {
        eggGroupCache = new EntityCache<>();
    }

    @Override
    public EggGroup findById(int id) throws SQLException {
        final Optional<EggGroup> cachedEggGroup = eggGroupCache.get(id);
        if (cachedEggGroup.isPresent()) return cachedEggGroup.get();
        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement selectStatement = connection.prepareStatement(SELECT_EGG_GROUP_BY_ID)) {
            selectStatement.setInt(1, id);
            try (ResultSet resultSet = selectStatement.executeQuery()) {
                verifyEggGroupExistsInResultSet(id, resultSet);
                final EggGroup eggGroup = buildEggGroupFromResultSet(resultSet);
                cacheEggGroup(eggGroup);
                return eggGroup;
            }

        }
    }

    private void cacheEggGroup(EggGroup eggGroup) {
        eggGroupCache.cache(eggGroup.id, eggGroup);
    }

    private EggGroup buildEggGroupFromResultSet(ResultSet resultSet) throws SQLException {
        final int eggGroupId = resultSet.getInt("EGG_GROUP_ID");
        final String eggGroupName = resultSet.getString("EGG_GROUP_NAME");
        return new EggGroup(eggGroupId, eggGroupName);
    }

    private void verifyEggGroupExistsInResultSet(int id, ResultSet resultSet) throws SQLException {
        if (!resultSet.next()) throw new SQLException(String.format("Egg Group with id %d can not be found.", id));
    }

    @Override
    public List<EggGroup> findAll() throws SQLException {
        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement selectStatement = connection.prepareStatement(SELECT_ALL_EGG_GROUPS);
             ResultSet resultSet = selectStatement.executeQuery()) {
            List<EggGroup> eggGroups = new ArrayList<>();
            while(resultSet.next()) {
                final EggGroup eggGroup = buildEggGroupFromResultSet(resultSet);
                cacheEggGroup(eggGroup);
                eggGroups.add(eggGroup);
            }
            return eggGroups;
        }
    }
}
