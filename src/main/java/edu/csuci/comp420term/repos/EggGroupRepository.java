package edu.csuci.comp420term.repos;

import edu.csuci.comp420term.entities.EggGroup;

import java.sql.SQLException;
import java.util.List;

public interface EggGroupRepository {

    EggGroup findById(int id) throws SQLException;
    List<EggGroup> findAll() throws SQLException;

}
