package edu.csuci.comp420term.application.components;

import edu.csuci.comp420term.application.ApplicationContext;
import edu.csuci.comp420term.entities.Pokemon;
import javafx.beans.property.Property;
import javafx.geometry.HPos;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.ColumnConstraints;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.Priority;
import javafx.scene.paint.Color;

public class PokedexPokemonIcon extends GridPane {

    private final Pokemon pokemon;

    public PokedexPokemonIcon(Pokemon pokemon) {
        super();
        this.pokemon = pokemon;
//        setGridLinesVisible(true);

        addPokemonIcon(pokemon);
        addIdLabel(pokemon);
        addPokemonName(pokemon);
    }

    private void addIdLabel(Pokemon pokemon) {
        final Label idLabel = new Label(String.format("#%03d", pokemon.id));
        idLabel.setTextFill(Color.web("#777"));
        this.add(idLabel, 0, 1);
    }

    private void addPokemonName(Pokemon pokemon) {
        final Label nameLabel = new Label(pokemon.name);
        nameLabel.setStyle("-fx-font-size: 2em");
        this.add(nameLabel, 0, 2);
    }

    private void addPokemonIcon(Pokemon pokemon) {
        Image icon = ApplicationContext.appContext().imageLoader.loadImage(pokemon.imageFilePath);
        final ImageView imageView = new ImageView(icon);
        GridPane.setHgrow(imageView, Priority.ALWAYS);
        GridPane.setHalignment(imageView, HPos.CENTER);
        GridPane.setVgrow(imageView, Priority.ALWAYS);
        imageView.setPreserveRatio(true);
        imageView.setFitWidth(200);

        imageView.setOnMouseClicked(event -> {
            System.out.println(pokemon.name);
        });
        imageView.setStyle("-fx-cursor: hand;");

        this.add(imageView, 0, 0);
    }
}
