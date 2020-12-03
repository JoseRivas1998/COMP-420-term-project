package edu.csuci.comp420term.application;

import edu.csuci.comp420term.application.containers.MainPane;
import edu.csuci.comp420term.data.BCryptAuthenticator;
import edu.csuci.comp420term.data.ImageLoader;
import edu.csuci.comp420term.data.mysqlrepos.*;
import edu.csuci.comp420term.repos.*;
import javafx.geometry.Dimension2D;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;

public final class ApplicationContext {

    public static final int PAGE_SIZE = 50;
    public static final double SPACING = 10;

    private static ApplicationContext applicationContext;

    public final PokemonRepository pokemonRepo;
    public final TypeRepository typeRepo;
    public final EggGroupRepository eggGroupRepo;
    public final AbilityRepository abilityRepo;
    public final NatureRepository natureRepo;
    public final StatRepository statRepository;
    public final ImageLoader imageLoader;
    public final Authenticator authenticator;
    public final UserRepository userRepo;
    public final PartyRepository partyRepo;

    public Stage mainStage;
    public Scene mainScene;
    public MainPane mainPane;

    private ApplicationContext() {
        this.pokemonRepo = new MySQLPokemonRepo();
        this.typeRepo = new MySQLTypeRepository();
        this.eggGroupRepo = new MySQLEggGroupRepository();
        this.abilityRepo = new MySQLAbilityRepository();
        this.natureRepo = new MySQLNatureRepository();
        this.statRepository = new MySQLStatRepository();
        this.imageLoader = new ImageLoader();
        this.authenticator = new BCryptAuthenticator();
        this.userRepo = new MySQLUserRepository();
        this.partyRepo = new MySqlPartyRepository();
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

    public void initialize(Stage mainStage, Dimension2D size) {
        this.mainPane = new MainPane();
        this.mainScene = new Scene(mainPane, size.getWidth(), size.getHeight());
        this.mainStage = mainStage;
        this.mainStage.setScene(this.mainScene);
        this.mainStage.getIcons().add(getAppIcon());
        this.mainStage.setMinWidth(size.getWidth());
        this.mainStage.setMinHeight(size.getHeight());
    }

    private Image getAppIcon() {
        return new Image(getClass().getResourceAsStream("/app_icon.png"));
    }

    public void setTitle(String title) {
        this.mainStage.setTitle(title);
    }


}
