package edu.csuci.comp420term.application.components;

import edu.csuci.comp420term.application.ApplicationContext;
import edu.csuci.comp420term.application.containers.PokemonPage;
import edu.csuci.comp420term.entities.EvolutionMethod;
import edu.csuci.comp420term.entities.Pokemon;
import edu.csuci.comp420term.repos.PokemonRepository;
import javafx.application.Platform;
import javafx.geometry.HPos;
import javafx.geometry.Pos;
import javafx.geometry.VPos;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.*;
import javafx.scene.text.TextAlignment;

import java.sql.SQLException;

public class EvolutionChain extends GridPane {

    public EvolutionChain(Pokemon pokemon) {
        super();
        if (pokemon.evolutionMethods.size() > 0) {
            addSubChains(pokemon);
        } else {
            add(pokemonIcon(pokemon), 0, 0);
        }

    }

    private void addSubChains(Pokemon pokemon) {
        new Thread(() -> {
            for (int i = 0; i < pokemon.evolutionMethods.size(); i++) {
                try {
                    final int evolutionRowNum = i;

                    final EvolutionMethod evolutionMethod = pokemon.evolutionMethods.get(evolutionRowNum);
                    final PokemonRepository pokemonRepo = ApplicationContext.appContext().pokemonRepo;
                    final Pokemon toPokemon = pokemonRepo.findById(evolutionMethod.evolvesIntoId);
                    Platform.runLater(() -> {
                        final GridPane gridPane = getMethodPane(evolutionMethod);
                        final EvolutionChain subChain = new EvolutionChain(toPokemon);
                        add(pokemonIcon(pokemon), 0, evolutionRowNum);
                        add(gridPane, 1, evolutionRowNum);
                        add(subChain, 2, evolutionRowNum);
                    });
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
        }).start();
    }

    private GridPane getMethodPane(EvolutionMethod evolutionMethod) {
        final GridPane gridPane = new GridPane();
        final Label method = new Label(evolutionMethod.method);
        method.setWrapText(true);
        final Image image = new Image(getClass().getResourceAsStream("/caret-right.png"));
        final ImageView imageView = new ImageView(image);
        imageView.setFitWidth(50);
        imageView.setPreserveRatio(true);
        gridPane.add(imageView, 0, 0);
        gridPane.add(method, 0, 1);
        GridPane.setHalignment(method, HPos.CENTER);
        GridPane.setHgrow(method, Priority.ALWAYS);
        GridPane.setVgrow(method, Priority.ALWAYS);
        GridPane.setHalignment(imageView, HPos.CENTER);
        GridPane.setValignment(gridPane, VPos.CENTER);
        return gridPane;
    }

    private VBox pokemonIcon(Pokemon pokemon) {
        final Image pokemonImage = ApplicationContext.appContext().imageLoader.loadImage(pokemon.imageFilePath);
        final ImageView pokemonImageView = new ImageView(pokemonImage);
        pokemonImageView.setPreserveRatio(true);
        pokemonImageView.setFitWidth(150);
        pokemonImageView.setOnMouseClicked(event -> {
            final PokemonPage pokemonPage = new PokemonPage(pokemon);
            ApplicationContext.appContext().mainPane.setCenter(pokemonPage);
        });
        pokemonImageView.setStyle("-fx-cursor: hand''");
        final Label pokemonName = new Label(pokemon.name);
        pokemonName.setStyle("-fx-font-size: 1.5em");
        pokemonName.setTextAlignment(TextAlignment.CENTER);
        final VBox vBox = new VBox();
        vBox.getChildren().addAll(pokemonImageView, pokemonName);
        return vBox;
    }

}
