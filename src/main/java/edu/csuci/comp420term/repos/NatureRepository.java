package edu.csuci.comp420term.repos;

import edu.csuci.comp420term.entities.Nature;

import java.sql.SQLException;
import java.util.List;

public interface NatureRepository {

    Nature findById(int id) throws SQLException;
    List<Nature> findAll() throws SQLException;
    List<Nature> findAllThatIncreaseStat(int statId) throws SQLException;
    List<Nature> findAllThatDecreaseStat(int statId) throws SQLException;

}
