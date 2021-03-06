package edu.csuci.comp420term.application.components;

import edu.csuci.comp420term.application.ApplicationContext;
import edu.csuci.comp420term.application.containers.PokemonPage;
import edu.csuci.comp420term.entities.Pokemon;
import edu.csuci.comp420term.entities.Type;
import javafx.beans.property.Property;
import javafx.geometry.HPos;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.ColumnConstraints;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Priority;
import javafx.scene.paint.Color;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

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
        final HBox nameBox = new HBox(ApplicationContext.SPACING / 2);
        nameBox.getChildren().addAll(nameLabel);
        final List<Type> types = getTypeList(pokemon);
        nameBox.getChildren().addAll(types.stream().map(TypeLabel::new).collect(Collectors.toList()));
        this.add(nameBox, 0, 2);
    }

    private List<Type> getTypeList(Pokemon pokemon) {
        final List<Type> types = new ArrayList<>();
        types.add(pokemon.primaryType);
        pokemon.getSecondaryType().ifPresent(types::add);
        return types;
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
            final PokemonPage pokemonPage = new PokemonPage(pokemon);
            ApplicationContext.appContext().mainPane.setCenter(pokemonPage);
        });
        imageView.setStyle("-fx-cursor: hand;");

        this.add(imageView, 0, 0);
    }
}
