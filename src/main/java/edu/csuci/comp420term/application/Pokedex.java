package edu.csuci.comp420term.application;

import edu.csuci.comp420term.entities.Pokemon;
import edu.csuci.comp420term.repos.PokemonRepository;
import javafx.application.Application;
import javafx.geometry.Dimension2D;
import javafx.stage.Stage;

import java.sql.SQLException;
import java.time.Duration;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class Pokedex extends Application {

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage primaryStage) throws Exception {
        final ApplicationContext applicationContext = ApplicationContext.appContext();
        applicationContext.initialize(primaryStage, new Dimension2D(1280, 720));
        applicationContext.setTitle("Pokedex");
        primaryStage.show();
    }
}
