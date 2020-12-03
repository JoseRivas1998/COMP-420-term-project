package edu.csuci.comp420term.application.containers;

import edu.csuci.comp420term.application.ApplicationContext;
import edu.csuci.comp420term.application.components.PokedexPokemonIcon;
import edu.csuci.comp420term.application.dialogs.ErrorDialog;
import edu.csuci.comp420term.entities.Pokemon;
import javafx.application.Platform;
import javafx.geometry.Insets;
import javafx.scene.control.Label;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.ColumnConstraints;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.Priority;

import java.sql.SQLException;
import java.util.List;

public class PokemonPartyPane extends BorderPane {


    public PokemonPartyPane() {
        super();
        setPadding(new Insets(ApplicationContext.SPACING / 2));
        setStyle("-fx-background-color: white");
        refreshPartyPane();

    }

    public void refreshPartyPane() {
        setCenter(new Label("Loading"));
        new Thread(this::refreshParty).start();
    }

    private void refreshParty() {
        final ApplicationContext appContext = ApplicationContext.appContext();
        try {
            final String username = appContext.userRepo.currentUser();
            final List<Pokemon> party = appContext.partyRepo.getParty(username);
            Platform.runLater(() -> {
                if (party.size() > 0) {
                    updateGrid(party);
                } else {
                    setCenter(new Label("There are no pokemon in your party."));
                }
            });
        } catch (Exception throwables) {
            Platform.runLater(() -> {
                ErrorDialog errorDialog = new ErrorDialog(throwables);
                errorDialog.initOwner(appContext.mainStage);
                errorDialog.showAndWait();
            });
        }
    }

    private void updateGrid(List<Pokemon> pokemonList) {
        GridPane partyGrid = new GridPane();
        partyGrid.setGridLinesVisible(true);
        partyGrid.setVgap(ApplicationContext.SPACING);
        partyGrid.setHgap(ApplicationContext.SPACING);
        for (int i = 0; i < pokemonList.size(); i++) {
            Pokemon pokemon = pokemonList.get(i);
            final int row = i / 3;
            final int column = i % 3;
            final PokedexPokemonIcon pokedexPokemonIcon = new PokedexPokemonIcon(pokemon);
            GridPane.setHgrow(pokedexPokemonIcon, Priority.ALWAYS);
            partyGrid.add(pokedexPokemonIcon, column, row);
        }
        for (int i = 0; i < 3; i++) {
            final ColumnConstraints columnConstraints = new ColumnConstraints();
            columnConstraints.setPercentWidth(100.0 / 3);
            partyGrid.getColumnConstraints().add(columnConstraints);
        }
        this.setCenter(partyGrid);
    }

}
