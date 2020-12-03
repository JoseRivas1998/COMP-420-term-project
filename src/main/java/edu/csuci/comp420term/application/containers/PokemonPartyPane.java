package edu.csuci.comp420term.application.containers;

import edu.csuci.comp420term.application.ApplicationContext;
import edu.csuci.comp420term.application.components.PokedexPokemonIcon;
import edu.csuci.comp420term.application.dialogs.ErrorDialog;
import edu.csuci.comp420term.entities.Pokemon;
import javafx.application.Application;
import javafx.application.Platform;
import javafx.geometry.HPos;
import javafx.geometry.Insets;
import javafx.scene.control.Button;
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
//        partyGrid.setGridLinesVisible(true);
        partyGrid.setVgap(ApplicationContext.SPACING);
        partyGrid.setHgap(ApplicationContext.SPACING);
        for (int i = 0; i < pokemonList.size(); i++) {
            final Pokemon pokemon = pokemonList.get(i);
            final int row = i / 3;
            final int column = i % 3;
            final PokedexPokemonIcon pokedexPokemonIcon = new PokedexPokemonIcon(pokemon);

            final Button moveBack = new Button("<");
            final Button moveForward = new Button(">");
            final Button remove = new Button("X");

            moveBack.setOnAction(event -> movePokemonBackAsync(pokemon, moveBack, moveForward, remove));
            moveForward.setOnAction(event -> moveForwardAsync(pokemon, moveBack, moveForward, remove));
            remove.setOnAction(event -> {
                removePokemonFromPartyAsync(pokemon, moveBack, moveForward, remove);
            });

            final GridPane partyItem = new GridPane();
            partyItem.setHgap(ApplicationContext.SPACING / 2);
            partyItem.setVgap(ApplicationContext.SPACING / 2);
            GridPane.setHgrow(pokedexPokemonIcon, Priority.ALWAYS);
            GridPane.setHgrow(moveBack, Priority.ALWAYS);
            GridPane.setHgrow(moveForward, Priority.ALWAYS);
            GridPane.setColumnSpan(pokedexPokemonIcon, 2);
            GridPane.setHalignment(moveForward, HPos.RIGHT);
            GridPane.setHgrow(remove, Priority.ALWAYS);
            GridPane.setHalignment(remove, HPos.RIGHT);
            partyItem.add(remove, 1, 0);
            partyItem.add(pokedexPokemonIcon, 0, 1);
            partyItem.add(moveBack, 0, 2);
            partyItem.add(moveForward, 1, 2);

            GridPane.setHgrow(partyItem, Priority.ALWAYS);
            partyGrid.add(partyItem, column, row);
        }
        for (int i = 0; i < 3; i++) {
            final ColumnConstraints columnConstraints = new ColumnConstraints();
            columnConstraints.setPercentWidth(100.0 / 3);
            partyGrid.getColumnConstraints().add(columnConstraints);
        }
        this.setCenter(partyGrid);
    }

    private void removePokemonFromPartyAsync(Pokemon pokemon, Button moveBack, Button moveForward, Button remove) {
        updateDisabledForButtons(moveBack, moveForward, remove, true);
        new Thread(() -> {
            removePokemonFromParty(pokemon, moveBack, moveForward, remove);
        }).start();
    }

    private void removePokemonFromParty(Pokemon pokemon, Button moveBack, Button moveForward, Button remove) {
        final ApplicationContext appContext = ApplicationContext.appContext();
        try {
            final String username = appContext.userRepo.currentUser();
            appContext.partyRepo.removeFromParty(username, pokemon);
            Platform.runLater(() -> {
                this.refreshPartyPane();
                updateDisabledForButtons(moveBack, moveForward, remove, false);
            });
        } catch (Exception exception) {
            Platform.runLater(() -> {
                ErrorDialog errorDialog = new ErrorDialog(exception);
                errorDialog.initOwner(appContext.mainStage);
                errorDialog.showAndWait();
                updateDisabledForButtons(moveBack, moveForward, remove, false);
            });
        }
    }

    private void moveForwardAsync(Pokemon pokemon, Button moveBack, Button moveForward, Button remove) {
        updateDisabledForButtons(moveBack, moveForward, remove, true);
        new Thread(() -> {
            moveForward(pokemon, moveBack, moveForward, remove);
        }).start();
    }

    private void moveForward(Pokemon pokemon, Button moveBack, Button moveForward, Button remove) {
        final ApplicationContext appContext = ApplicationContext.appContext();
        try {
            final String username = appContext.userRepo.currentUser();
            appContext.partyRepo.moveForward(username, pokemon);
            Platform.runLater(() -> {
                this.refreshPartyPane();
                updateDisabledForButtons(moveBack, moveForward, remove, false);
            });
        } catch (Exception exception) {
            Platform.runLater(() -> {
                ErrorDialog errorDialog = new ErrorDialog(exception);
                errorDialog.initOwner(appContext.mainStage);
                errorDialog.showAndWait();
                updateDisabledForButtons(moveBack, moveForward, remove, false);
            });
        }
    }

    private void movePokemonBackAsync(Pokemon pokemon, Button moveBack, Button moveForward, Button remove) {
        updateDisabledForButtons(moveBack, moveForward, remove, true);
        new Thread(() -> {
            movePokemonBack(pokemon, moveBack, moveForward, remove);
        }).start();
    }

    private void movePokemonBack(Pokemon pokemon, Button moveBack, Button moveForward, Button remove) {
        final ApplicationContext appContext = ApplicationContext.appContext();
        try {
            final String username = appContext.userRepo.currentUser();
            appContext.partyRepo.moveBack(username, pokemon);
            Platform.runLater(() -> {
                this.refreshPartyPane();
                updateDisabledForButtons(moveBack, moveForward, remove, false);
            });
        } catch (Exception exception) {
            Platform.runLater(() -> {
                ErrorDialog errorDialog = new ErrorDialog(exception);
                errorDialog.initOwner(appContext.mainStage);
                errorDialog.showAndWait();
                updateDisabledForButtons(moveBack, moveForward, remove, false);
            });
        }
    }

    private void updateDisabledForButtons(Button moveBack, Button moveForward, Button remove, boolean disable) {
        moveBack.setDisable(disable);
        moveForward.setDisable(disable);
        remove.setDisable(disable);
    }

}
