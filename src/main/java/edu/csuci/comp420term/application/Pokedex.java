package edu.csuci.comp420term.application;

import edu.csuci.comp420term.entities.Pokemon;
import edu.csuci.comp420term.repos.PokemonRepository;

import java.sql.SQLException;
import java.time.Duration;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class Pokedex {

    public static final int PAGE_SIZE = 50;

    public static void main(String[] args) {
        try {
            final PokemonRepository pokemonRepo = ApplicationContext.appContext().pokemonRepo;
            testAllPages(pokemonRepo);
            testAllPages(pokemonRepo);
//            testGenerationPage(pokemonRepo, 1, 0);
//            testGenerationPage(pokemonRepo, 1, 1);
//            testGenerationPage(pokemonRepo, 3, 2);
//            testGeneration(pokemonRepo, 1);
//            testGeneration(pokemonRepo, 3);
//            testPagination(pokemonRepo, 0);
//            testPagination(pokemonRepo, 1);
//            testAllPokemon(pokemonRepo);
//            testAllPokemon(pokemonRepo);
//            testPokemon(pokemonRepo, "BULBASAUR", 1);
//            testPokemon(pokemonRepo, "IVYSAUR", 2);
//            testPokemon(pokemonRepo, "CATERPIE", 10);
//            testPokemon(pokemonRepo, "PIDGEY", 16);
//            testPokemon(pokemonRepo, "PIKACHU", 25);
//            testPokemon(pokemonRepo, "GASTLY", 92);
//            testPokemon(pokemonRepo, "EEVEE", 133);
//            testPokemon(pokemonRepo, "ARCEUS", 493);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    private static void testAllPages(PokemonRepository pokemonRepo) throws SQLException {
        for (int generation = 1; generation <= 7; generation++) {
            final int pages = pokemonRepo.pagesInGeneration(generation, PAGE_SIZE);
            for (int page = 0; page < pages; page++) {
                testGenerationPage(pokemonRepo, generation, page);
            }
        }
    }

    private static void testAllPokemon(PokemonRepository pokemonRepo) throws SQLException {
        System.out.println("GETTING ALL POKEMON");
        final Instant start = Instant.now();
        final List<Pokemon> allPokemon = pokemonRepo.findAll();
        final Duration duration = Duration.between(start, Instant.now());
        final double seconds = durationSeconds(duration);
        System.out.printf("Found %d pokemon in %f seconds.\n", allPokemon.size(), seconds);
    }

    private static void testGenerationPage(PokemonRepository pokemonRepo, int generation, int pageNumber) throws SQLException {
        System.out.println("TESTING PAGING: PAGE " + pageNumber + " FOR GENERATION " + generation);
        final Instant start = Instant.now();
        final List<Pokemon> allPokemon = pokemonRepo.findAllInGenerationPage(generation, pageNumber, PAGE_SIZE);
        final Duration duration = Duration.between(start, Instant.now());
        final double seconds = durationSeconds(duration);
        System.out.printf("Found %d pokemon in %f seconds.\n", allPokemon.size(), seconds);
    }

    private static void testGeneration(PokemonRepository pokemonRepo, int generation) throws SQLException {
        System.out.println("GETTING ALL POKEMON FROM GEN " + generation);
        final Instant start = Instant.now();
        final List<Pokemon> allPokemon = pokemonRepo.findAllInGeneration(generation);
        final Duration duration = Duration.between(start, Instant.now());
        final double seconds = durationSeconds(duration);
        System.out.printf("Found %d pokemon in %f seconds.\n", allPokemon.size(), seconds);
    }


    private static void testPagination(PokemonRepository pokemonRepo, int pageNumber) throws SQLException {
        System.out.println("TESTING PAGING: PAGE " + pageNumber);
        final Instant start = Instant.now();
        final List<Pokemon> allPokemon = pokemonRepo.findAllInPage(pageNumber, PAGE_SIZE);
        final Duration duration = Duration.between(start, Instant.now());
        final double seconds = durationSeconds(duration);
        System.out.printf("Found %d pokemon in %f seconds.\n", allPokemon.size(), seconds);
    }

    private static double durationSeconds(Duration duration) {
        final long fullSeconds = duration.toSeconds();
        final long millis = duration.toMillis() - TimeUnit.MILLISECONDS.convert(fullSeconds, TimeUnit.SECONDS);
        return fullSeconds + (millis / 1000.0);
    }

    private static void testPokemon(PokemonRepository pokemonRepo, String pokemonName, int pokemonId) throws SQLException {
        final Instant start = Instant.now();
        System.out.println("\nTESTING WITH " + pokemonName);
        final Pokemon pokemon = pokemonRepo.findById(pokemonId);
        System.out.println(pokemon);
        final Duration duration = Duration.between(start, Instant.now());
        System.out.println("Pokemon found in " + durationSeconds(duration) + "ms");
    }

}
