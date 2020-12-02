package edu.csuci.comp420term.repos;

import edu.csuci.comp420term.entities.Pokemon;
import edu.csuci.comp420term.utils.OrderedPair;

import java.sql.SQLException;
import java.util.List;

public interface PokemonRepository {

    Pokemon findById(final int id) throws SQLException;

    List<Pokemon> findAll() throws SQLException;
    List<Pokemon> findAllInPage(int pageNumber, int pageSize, int offset, int max) throws SQLException;

    default List<Pokemon> findAllInPage(int pageNumber, int pageSize) throws SQLException {
        return findAllInPage(pageNumber, pageSize, 1, Integer.MAX_VALUE);
    }

    List<Pokemon> findAllInGeneration(int generation) throws SQLException;
    List<Pokemon> findAllInGenerationPage(int generation, int pageNumber, int pageSize) throws SQLException;

    default int pagesInRange(OrderedPair<Integer> range, int pageSize) {
        if (range.first > range.second) return pagesInRange(OrderedPair.ensureRange(range), pageSize);
        final int rangeLength = range.second - range.first + 1;
        final int numPages = rangeLength / pageSize;
        return rangeLength % pageSize == 0 ? numPages : numPages + 1;
    }

    int pagesInGeneration(int generation, int pageSize) throws SQLException;



}
