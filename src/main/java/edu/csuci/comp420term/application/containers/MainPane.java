package edu.csuci.comp420term.application.containers;

import javafx.scene.layout.BorderPane;

public class MainPane extends BorderPane {

    private final PokedexTabPane mainTabPane;

    public MainPane() {
        super();
        mainTabPane = new PokedexTabPane();
        goToHome();
    }

    public void goToHome() {
        setCenter(mainTabPane);
    }

}
