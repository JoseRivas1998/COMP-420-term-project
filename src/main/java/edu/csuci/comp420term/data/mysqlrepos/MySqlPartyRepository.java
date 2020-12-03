package edu.csuci.comp420term.data.mysqlrepos;

import edu.csuci.comp420term.application.ApplicationContext;
import edu.csuci.comp420term.data.ConnectionBuilder;
import edu.csuci.comp420term.entities.Pokemon;
import edu.csuci.comp420term.repos.PartyRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySqlPartyRepository implements PartyRepository {

    private static final String SELECT_POKEMON_PARTY = "SELECT * FROM POKEMON_PARTY WHERE USERNAME = ? ORDER BY PARTY_ORDINAL";
    private static final String ADD_POKEMON_TO_PARTY = "{CALL add_pokemon_to_party(?, ?)}";
    private static final String REMOVE_FROM_PARTY = "{CALL remove_from_party(?, ?)}";
    private static final String MOVE_POKEMON_BACK = "{CALL move_pokemon_back(?, ?)}";
    private static final String MOVE_POKEMON_FORWARD = "{CALL move_pokemon_forward(?, ?)}";

    @Override
    public List<Pokemon> getParty(String username) throws SQLException {
        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement selectStatement = connection.prepareStatement(SELECT_POKEMON_PARTY)) {
            selectStatement.setString(1, username);
            try (ResultSet resultSet = selectStatement.executeQuery()) {
                final List<Pokemon> party = new ArrayList<>();
                while (resultSet.next()) {
                    final int pokemonId = resultSet.getInt("POKEMON_ID");
                    party.add(ApplicationContext.appContext().pokemonRepo.findById(pokemonId));
                }
                return party;
            }
        }
    }

    @Override
    public void addToParty(String username, Pokemon pokemon) throws SQLException {
        try (Connection connection = ConnectionBuilder.buildConnection();
             CallableStatement insertCall = connection.prepareCall(ADD_POKEMON_TO_PARTY)) {
            insertCall.setString(1, username);
            insertCall.setInt(2, pokemon.id);
            try (ResultSet resultSet = insertCall.executeQuery()) {
                resultSet.next();
                final boolean added = resultSet.getBoolean("ADDED");
                if (!added) {
                    throw new RuntimeException("Pokemon was not added to party");
                }
            }
        }
    }

    @Override
    public void removeFromParty(String username, Pokemon pokemon) throws SQLException {
        try (Connection connection = ConnectionBuilder.buildConnection();
             CallableStatement removeCall = connection.prepareCall(REMOVE_FROM_PARTY)) {
            removeCall.setString(1, username);
            removeCall.setInt(2, pokemon.id);
            removeCall.execute();
        }
    }

    @Override
    public void moveBack(String username, Pokemon pokemon) throws SQLException {
        try (Connection connection = ConnectionBuilder.buildConnection();
             CallableStatement moveBackCall = connection.prepareCall(MOVE_POKEMON_BACK)) {
            moveBackCall.setString(1, username);
            moveBackCall.setInt(2, pokemon.id);
            moveBackCall.execute();
        }
    }

    @Override
    public void moveForward(String username, Pokemon pokemon) throws SQLException {
        try (Connection connection = ConnectionBuilder.buildConnection();
        CallableStatement moveForwardCall = connection.prepareCall(MOVE_POKEMON_FORWARD)) {
            moveForwardCall.setString(1, username);
            moveForwardCall.setInt(2, pokemon.id);
            moveForwardCall.execute();
        }
    }
}
