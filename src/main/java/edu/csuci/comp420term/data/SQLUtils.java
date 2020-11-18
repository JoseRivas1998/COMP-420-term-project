package edu.csuci.comp420term.data;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface SQLUtils {

    static List<Map<String, Object>> executeSqlQueryAndLoadAllResults(String sql) throws SQLException {
        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement selectStatement = connection.prepareStatement(sql);
             ResultSet resultSet = selectStatement.executeQuery()) {
            List<Map<String, Object>> rows = new ArrayList<>();
            ResultSetMetaData resultSetMetaData = resultSet.getMetaData();
            while(resultSet.next()) {
                Map<String, Object> row = new HashMap<>();
                for (int i = 0; i < resultSetMetaData.getColumnCount(); i++) {
                    row.put(resultSetMetaData.getColumnLabel(i + 1), resultSet.getObject(i + 1));
                }
                rows.add(row);
            }
            return rows;
        }
    }

}
