package edu.csuci.comp420term.repos;

import edu.csuci.comp420term.entities.Type;

import java.util.List;

public interface TypeRepository {

    Type findById(final int id);
    List<Type> findAll();
    

}
