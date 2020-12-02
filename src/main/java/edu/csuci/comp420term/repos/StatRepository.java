package edu.csuci.comp420term.repos;

import edu.csuci.comp420term.entities.BaseStat;
import edu.csuci.comp420term.entities.Stat;

import java.sql.SQLException;
import java.util.List;

public interface StatRepository {

    Stat findById(int id) throws SQLException;
    BaseStat pokemonBaseStat(int pokemonId, int statId) throws SQLException;
    List<BaseStat> pokemonBaseStats(int pokemonId) throws SQLException;

}
