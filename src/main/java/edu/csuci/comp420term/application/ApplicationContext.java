package edu.csuci.comp420term.application;

import edu.csuci.comp420term.data.mysqlrepos.MySQLPokemonRepo;
import edu.csuci.comp420term.repos.PokemonRepository;

public final class ApplicationContext {

    private static ApplicationContext applicationContext;

    public final PokemonRepository pokemonRepo;

    private ApplicationContext() {
        this.pokemonRepo = new MySQLPokemonRepo();
    }

    public static ApplicationContext appContext() {
        if (applicationContext == null) {
            synchronized (ApplicationContext.class) {
                if (applicationContext == null) {
                    applicationContext = new ApplicationContext();
                }
            }
        }
        return applicationContext;
    }

}
