package edu.csuci.comp420term.application;

import edu.csuci.comp420term.data.mysqlrepos.*;
import edu.csuci.comp420term.repos.*;

public final class ApplicationContext {

    private static ApplicationContext applicationContext;

    public final PokemonRepository pokemonRepo;
    public final TypeRepository typeRepo;
    public final EggGroupRepository eggGroupRepo;
    public final AbilityRepository abilityRepo;
    public final NatureRepository natureRepo;
    public final StatRepository statRepository;

    private ApplicationContext() {
        this.pokemonRepo = new MySQLPokemonRepo();
        this.typeRepo = new MySQLTypeRepository();
        this.eggGroupRepo = new MySQLEggGroupRepository();
        this.abilityRepo = new MySQLAbilityRepository();
        this.natureRepo = new MySQLNatureRepository();
        this.statRepository = new MySQLStatRepository();
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
