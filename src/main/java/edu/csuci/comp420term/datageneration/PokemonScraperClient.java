package edu.csuci.comp420term.datageneration;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class PokemonScraperClient {

    public static final int NUM_POKEMON_TO_FETCH = 151;

    public static void main(String[] args) throws InterruptedException {
        final List<Thread> threads = new ArrayList<>();
        final List<JSONObject> pokemonObjects = new ArrayList<>();
        for (int i = 1; i <= NUM_POKEMON_TO_FETCH; i++) {
            final int pokedexNum = i;
            Thread t = new Thread(() -> {
                try {
                    final PokemonGenerator pokemonGenerator = new PokemonGenerator(pokedexNum);
                    final JSONObject pokemon = pokemonGenerator.generate();
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
        pokemonObjects.sort(Comparator.comparing(pokemon -> pokemon.getInt("id")));
        final JSONArray pokemonJSONData = new JSONArray();
        pokemonObjects.forEach(pokemonJSONData::put);
        System.out.println(pokemonJSONData.toString(4));
    }

}
