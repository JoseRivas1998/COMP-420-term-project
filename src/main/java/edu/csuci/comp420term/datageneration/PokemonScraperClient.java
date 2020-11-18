package edu.csuci.comp420term.datageneration;

import edu.csuci.comp420term.entities.Ability;
import edu.csuci.comp420term.entities.EggGroup;
import edu.csuci.comp420term.entities.Pokemon;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.*;

public class PokemonScraperClient {

    public static final int NUM_POKEMON_TO_FETCH = 151;

    public static void main(String[] args) throws InterruptedException {
        final List<Thread> threads = new ArrayList<>();
        final List<Pokemon> pokemonObjects = new ArrayList<>();
        for (int i = 1; i <= NUM_POKEMON_TO_FETCH; i++) {
            final int pokedexNum = i;
            Thread t = new Thread(() -> {
                try {
                    final PokemonGenerator pokemonGenerator = new PokemonGenerator(pokedexNum);
                    final Pokemon pokemon = pokemonGenerator.generate();
                    synchronized (PokemonScraperClient.class) {
                        pokemonObjects.add(pokemon);
                    }
                } catch (Exception exception) {
                    exception.printStackTrace();
                }
            });
            threads.add(t);
        }
        threads.forEach(Thread::start);
        for (Thread thread : threads) {
            thread.join();
        }
        pokemonObjects.sort(Pokemon::compareTo);
        final Set<Ability> abilities = new TreeSet<>(Comparator.comparing(ability -> ability.id));
        final Set<EggGroup> eggGroups = new TreeSet<>(Comparator.comparing(eggGroup -> eggGroup.id));
        for (Pokemon pokemonObject : pokemonObjects) {
            abilities.add(pokemonObject.primaryAbility);
            pokemonObject.getSecondaryAbility().ifPresent(abilities::add);
            pokemonObject.getHiddenAbility().ifPresent(abilities::add);

            eggGroups.add(pokemonObject.primaryEggGroup);
            pokemonObject.getSecondaryEggGroup().ifPresent(eggGroups::add);
        }
        abilities.forEach(System.out::println);
        System.out.println();
        eggGroups.forEach(System.out::println);
    }

}
