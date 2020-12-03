package edu.csuci.comp420term.repos;

import edu.csuci.comp420term.entities.Pokemon;

import java.sql.SQLException;
import java.util.List;

public interface PartyRepository {

    List<Pokemon> getParty(String username) throws SQLException;
    void addToParty(String username, Pokemon pokemon) throws SQLException;
    void removeFromParty(String username, Pokemon pokemon) throws SQLException;
    void moveBack(String username, Pokemon pokemon) throws SQLException;
    void moveForward(String username, Pokemon pokemon) throws SQLException;

}
