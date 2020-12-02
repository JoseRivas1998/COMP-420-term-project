package edu.csuci.comp420term.application;

import edu.csuci.comp420term.data.mysqlrepos.*;
import edu.csuci.comp420term.repos.*;
import javafx.geometry.Dimension2D;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

import java.io.InputStream;

public final class ApplicationContext {

    public static final int PAGE_SIZE = 50;

    private static ApplicationContext applicationContext;

    public final PokemonRepository pokemonRepo;
    public final TypeRepository typeRepo;
    public final EggGroupRepository eggGroupRepo;
    public final AbilityRepository abilityRepo;
    public final NatureRepository natureRepo;
    public final StatRepository statRepository;

    public Stage mainStage;
    public Scene mainScene;

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

    public void initialize(Stage mainStage, Dimension2D size) {
        BorderPane borderPane = new BorderPane();
        borderPane.setCenter(new Label("Hello World!"));
        this.mainScene = new Scene(borderPane, size.getWidth(), size.getHeight());
        this.mainStage = mainStage;
        this.mainStage.setScene(this.mainScene);
        this.mainStage.getIcons().add(getAppIcon());
    }

    private Image getAppIcon() {
        return new Image(getClass().getResourceAsStream("/app_icon.png"));
    }

    public void setTitle(String title) {
        this.mainStage.setTitle(title);
    }



}
