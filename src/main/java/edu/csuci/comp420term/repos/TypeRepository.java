package edu.csuci.comp420term.repos;

import edu.csuci.comp420term.entities.Pokemon;
import edu.csuci.comp420term.entities.Type;
import edu.csuci.comp420term.entities.AttackTypeMultiplier;

import java.sql.SQLException;
import java.util.List;

public interface TypeRepository {

    Type findById(final int id) throws SQLException;

    List<Type> findAll() throws SQLException;

    List<AttackTypeMultiplier> findAttackTypeMultiplierForPokemon(Pokemon pokemon) throws SQLException;

}
