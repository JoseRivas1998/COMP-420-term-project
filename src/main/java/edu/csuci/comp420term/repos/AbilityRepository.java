package edu.csuci.comp420term.repos;

import edu.csuci.comp420term.entities.Ability;

import java.sql.SQLException;
import java.util.List;

public interface AbilityRepository {

    Ability findById(int id) throws SQLException;
    List<Ability> findAll() throws SQLException;

}
