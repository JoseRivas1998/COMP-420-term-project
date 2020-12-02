package edu.csuci.comp420term.application.containers;

import javafx.scene.layout.BorderPane;

public class MainPane extends BorderPane {

    public MainPane() {
        super();
        setCenter(new PokedexTabPane());
    }

}
