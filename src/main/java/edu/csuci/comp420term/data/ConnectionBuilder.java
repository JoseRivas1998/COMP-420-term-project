package edu.csuci.comp420term.data;

import edu.csuci.comp420term.config.Config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class ConnectionBuilder {

    public static Connection buildConnection() throws SQLException {
        String connectionUrl = String.format("jdbc:mysql://%s/%s", Config.DB_HOST, Config.DB_NAME);
        return DriverManager.getConnection(connectionUrl, Config.DB_USERNAME, Config.DB_PASSWORD);
    }

}
