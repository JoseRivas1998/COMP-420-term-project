package edu.csuci.comp420term.repos;

import edu.csuci.comp420term.entities.Pokemon;

import java.sql.SQLException;
import java.util.List;

public interface PokemonRepository {

    Pokemon findById(final int id) throws SQLException;

    List<Pokemon> findAll();



}
