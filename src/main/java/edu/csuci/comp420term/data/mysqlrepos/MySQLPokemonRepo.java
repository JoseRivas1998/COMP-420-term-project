package edu.csuci.comp420term.data.mysqlrepos;

import edu.csuci.comp420term.data.ConnectionBuilder;
import edu.csuci.comp420term.entities.Pokemon;
import edu.csuci.comp420term.repos.PokemonRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class MySQLPokemonRepo implements PokemonRepository {

    public static final String SELECT_POKEMON_BY_ID = "SELECT * FROM POKEMON WHERE POKEMON_ID = ? LIMIT 1;";
    private Map<Integer, Pokemon> pokemonCache;

    @Override
    public Pokemon findById(final int id) throws SQLException {
        if (pokemonCache.containsKey(id)) return pokemonCache.get(id);
        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement selectPokemonStatement = connection.prepareStatement(SELECT_POKEMON_BY_ID)) {
            selectPokemonStatement.setInt(1, id);
            try (ResultSet pokemonResult = selectPokemonStatement.executeQuery()) {
                verifyPokemonOfIdExistsInResultSet(id, pokemonResult);
                final int pokemonId = pokemonResult.getInt("POKEMON_ID");
                final String pokemonName = pokemonResult.getString("POKEMON_NAME");
                final String pokemonDescription = pokemonResult.getString("POKEMON_DESCRIPTION");
                final String pokemonImageURL = pokemonResult.getString("POKEMON_IMAGE_URL");
                return null;
            }
        }
    }

    private void verifyPokemonOfIdExistsInResultSet(int id, ResultSet pokemonResult) throws SQLException {
        if (!pokemonResult.next()) throw new SQLException(String.format("Pokemon with id %d could not be found", id));
    }

    @Override
    public List<Pokemon> findAll() {
        return null;
    }
}
