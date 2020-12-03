package edu.csuci.comp420term.application.components;

import edu.csuci.comp420term.application.ApplicationContext;
import edu.csuci.comp420term.entities.Pokemon;
import javafx.geometry.Insets;
import javafx.scene.layout.ColumnConstraints;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.Priority;

import java.util.List;

public class PokemonGrid extends GridPane {

    public PokemonGrid(List<Pokemon> pokemonList, int pokemonPerRow) {
        super();
//        setGridLinesVisible(true);
        setVgap(ApplicationContext.SPACING);
        setHgap(ApplicationContext.SPACING);
        setPadding(new Insets(ApplicationContext.SPACING / 2));
        for (int i = 0; i < pokemonList.size(); i++) {
            Pokemon pokemon = pokemonList.get(i);
            final int row = i / pokemonPerRow;
            final int column = i % pokemonPerRow;
            final PokedexPokemonIcon pokedexPokemonIcon = new PokedexPokemonIcon(pokemon);
            GridPane.setHgrow(pokedexPokemonIcon, Priority.ALWAYS);
            this.add(pokedexPokemonIcon, column, row);
        }
        for (int i = 0; i < pokemonPerRow; i++) {
            final ColumnConstraints columnConstraints = new ColumnConstraints();
            columnConstraints.setPercentWidth(100.0 / pokemonPerRow);
            getColumnConstraints().add(columnConstraints);
        }
        setStyle("-fx-background-color: white");
    }

}
