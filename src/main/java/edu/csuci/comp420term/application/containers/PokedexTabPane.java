package edu.csuci.comp420term.application.containers;

import javafx.scene.control.TabPane;

public class PokedexTabPane extends TabPane {

    public PokedexTabPane() {
        super();
        for (int generation = 1; generation <= 7; generation++) {
            final GenerationTabPane generationTabPane = new GenerationTabPane(generation);
            getTabs().add(generationTabPane);
            if (generation == 1) {
                generationTabPane.initialLoad();
            }
        }
        getSelectionModel().selectedItemProperty().addListener((observable, oldValue, newValue) -> {
            if (newValue instanceof GenerationTabPane) {
                ((GenerationTabPane) newValue).initialLoad();
            }
        });
    }

}
