package edu.csuci.comp420term.repos;

import edu.csuci.comp420term.entities.Type;

import java.sql.SQLException;
import java.util.List;

public interface TypeRepository {

    Type findById(final int id) throws SQLException;
    List<Type> findAll() throws SQLException;

}
