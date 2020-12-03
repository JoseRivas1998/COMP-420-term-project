package edu.csuci.comp420term.data.mysqlrepos;

import edu.csuci.comp420term.application.ApplicationContext;
import edu.csuci.comp420term.data.ConnectionBuilder;
import edu.csuci.comp420term.repos.Authenticator;
import edu.csuci.comp420term.repos.UserRepository;
import org.apache.commons.lang3.StringUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MySQLUserRepository implements UserRepository {

    private static final String INSERT_INTO_USERS = "INSERT INTO POKEDEX_USERS(USERNAME, PASSWORD_HASH) VALUES (?, ?)";
    private static final String SELECT_USER = "SELECT * FROM POKEDEX_USERS WHERE USERNAME = ? LIMIT 1";
    private boolean isLoggedIn = false;
    private String currentUser;

    @Override
    public void login(String username, String password) {
        final String trimmedUsername = username.toLowerCase().trim();
        final String trimmedPassword = password.trim();
        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement selectStatement = connection.prepareStatement(SELECT_USER)) {
            selectStatement.setString(1, trimmedUsername);
            try (ResultSet resultSet = selectStatement.executeQuery()) {
                verifyUserExistsInResultSet(resultSet);
                final String passwordHash = resultSet.getString("PASSWORD_HASH");
                final Authenticator authenticator = ApplicationContext.appContext().authenticator;
                if (authenticator.matches(trimmedPassword, passwordHash)) {
                    loginUser(resultSet.getString("USERNAME"));
                } else {
                    throw new IllegalArgumentException("Password does not match");
                }
            }

        } catch (SQLException throwables) {
            throw new RuntimeException("Unable to login.", throwables);
        }
    }

    private void verifyUserExistsInResultSet(ResultSet resultSet) throws SQLException {
        if (!resultSet.next()) throw new IllegalArgumentException("User not found.");
    }

    @Override
    public void createAccount(String username, String password) {
        final String trimmedUsername = username.toLowerCase().trim();
        final String trimmedPassword = password.trim();
        ensureStringIsAlphanumeric(trimmedUsername);
        ensureBasicPasswordStrength(trimmedPassword);
        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement insertStatement = connection.prepareStatement(INSERT_INTO_USERS)) {
            insertStatement.setString(1, trimmedUsername);
            final Authenticator authenticator = ApplicationContext.appContext().authenticator;
            final String encodedPassword = authenticator.encode(trimmedPassword);
            insertStatement.setString(2, encodedPassword);
            if (insertStatement.executeUpdate() == 1) {
                loginUser(trimmedUsername);
            } else {
                throw new RuntimeException("Account was not created.");
            }
        } catch (SQLException throwables) {
            throw new RuntimeException("Unable to create account.", throwables);
        }
    }

    private void ensureBasicPasswordStrength(String trimmedPassword) {
        if (trimmedPassword.isBlank() || trimmedPassword.length() < 6) {
            throw new IllegalArgumentException("Password must be at least 6 characters long.");
        }
    }

    private void ensureStringIsAlphanumeric(String trimmedUsername) {
        if (!StringUtils.isAlphanumeric(trimmedUsername)) {
            throw new IllegalArgumentException("Username must be only alphanumeric");
        }
    }

    private void loginUser(String username) {
        isLoggedIn = true;
        this.currentUser = username;
    }

    @Override
    public String currentUser() {
        if (!isLoggedIn) throw new IllegalStateException("There is no signed in user.");
        return currentUser;
    }

}
