package edu.csuci.comp420term.data.mysqlrepos;

import edu.csuci.comp420term.data.ConnectionBuilder;
import edu.csuci.comp420term.entities.Type;
import edu.csuci.comp420term.repos.TypeRepository;
import edu.csuci.comp420term.utils.EntityCache;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public final class MySQLTypeRepository implements TypeRepository {

    private static final String SELECT_TYPE_BY_ID = "SELECT * FROM TYPE WHERE TYPE_ID = ? LIMIT 1";
    private static final String SELECT_ALL_TYPES = "SELECT * FROM TYPE ORDER BY TYPE_ID";
    private final EntityCache<Integer, Type> typeCache;

    public MySQLTypeRepository() {
        typeCache = new EntityCache<>();
    }

    @Override
    public Type findById(int id) throws SQLException {
        final Optional<Type> cachedType = typeCache.get(id);
        if (cachedType.isPresent()) {
            return cachedType.get();
        }
        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement selectStatement = connection.prepareStatement(SELECT_TYPE_BY_ID)) {
            selectStatement.setInt(1, id);
            try (ResultSet resultSet = selectStatement.executeQuery()) {
                verifyTypeExistsInResultSet(id, resultSet);
                final Type type = buildTypeFromResultSet(resultSet);
                cacheType(type);
                return type;
            }
        }
    }

    private Type buildTypeFromResultSet(ResultSet resultSet) throws SQLException {
        final int typeId = resultSet.getInt("TYPE_ID");
        final String typeName = resultSet.getString("TYPE_NAME");
        final String typeColorHex = "#" + resultSet.getString("TYPE_COLOR_HEX");
        return new Type(typeId, typeName, typeColorHex);
    }

    private void verifyTypeExistsInResultSet(int id, ResultSet resultSet) throws SQLException {
        if (!resultSet.next()) throw new SQLException(String.format("The type with id %d can not be found", id));
    }

    @Override
    public List<Type> findAll() throws SQLException {
        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement selectStatement = connection.prepareStatement(SELECT_ALL_TYPES);
             ResultSet resultSet = selectStatement.executeQuery()) {
            List<Type> types = new ArrayList<>();
            while (resultSet.next()) {
                final Type type = buildTypeFromResultSet(resultSet);
                cacheType(type);
                types.add(type);
            }
            return types;
        }
    }

    private void cacheType(Type type) {
        typeCache.cache(type.id, type);
    }
}
