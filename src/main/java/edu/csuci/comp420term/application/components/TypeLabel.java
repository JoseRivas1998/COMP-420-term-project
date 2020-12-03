package edu.csuci.comp420term.application.components;

import edu.csuci.comp420term.application.ApplicationContext;
import edu.csuci.comp420term.entities.Type;
import javafx.geometry.Insets;
import javafx.scene.control.Label;

public class TypeLabel extends Label {

    public TypeLabel(Type type) {
        super(type.name);
        setPadding(new Insets(ApplicationContext.SPACING / 2));
        setStyle("-fx-background-radius: 5px; " +
                "-fx-text-fill: white;" +
                " -fx-font-size: 1.25em;" +
                " -fx-background-color: " + type.colorHex);
    }

}
