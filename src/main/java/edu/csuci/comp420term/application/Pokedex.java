package edu.csuci.comp420term.application;

import edu.csuci.comp420term.application.dialogs.ErrorDialog;
import edu.csuci.comp420term.entities.Pokemon;
import edu.csuci.comp420term.repos.PokemonRepository;
import edu.csuci.comp420term.utils.OrderedPair;
import javafx.application.Application;
import javafx.geometry.Dimension2D;
import javafx.scene.control.*;
import javafx.scene.layout.GridPane;
import javafx.stage.Stage;
import javafx.util.Pair;

import java.sql.SQLException;
import java.time.Duration;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.TimeUnit;

public class Pokedex extends Application {

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage primaryStage) throws Exception {
        boolean tryAgain;
        do {
            tryAgain = false;
            final Optional<Pair<Boolean, OrderedPair<String>>> result = showAuthenticationDialog();
            if (result.isPresent()) {
                final Pair<Boolean, OrderedPair<String>> authInput = result.get();
                final boolean login = authInput.getKey();
                final OrderedPair<String> authData = authInput.getValue();
                final String username = authData.first;
                final String password = authData.second;
                try {
                    final ApplicationContext applicationContext = ApplicationContext.appContext();
                    if (login) {
                        applicationContext.userRepo.login(username, password);
                    } else {
                        applicationContext.userRepo.createAccount(username, password);
                    }
                    applicationContext.initialize(primaryStage, new Dimension2D(1280, 720));
                    applicationContext.setTitle("Pokedex");
                    primaryStage.show();
                } catch (Exception exception) {
                    final ErrorDialog errorDialog = new ErrorDialog(exception);
                    errorDialog.showAndWait();
                    tryAgain = true;
                }
            }
        } while (tryAgain);
    }

    private Optional<Pair<Boolean, OrderedPair<String>>> showAuthenticationDialog() {
        final Dialog<Pair<Boolean, OrderedPair<String>>> dialog = new Dialog<>();
        dialog.setTitle("Authentication");
        dialog.setHeaderText("Log in or Create Account");
        final ButtonType loginButtonType = new ButtonType("Login");
        final ButtonType createAccountButtonType = new ButtonType("Create Account");
        dialog.getDialogPane().getButtonTypes().addAll(loginButtonType,
                createAccountButtonType,
                ButtonType.CANCEL);
        final GridPane grid = new GridPane();
        grid.setHgap(ApplicationContext.SPACING);
        grid.setVgap(ApplicationContext.SPACING);
        final TextField username = new TextField();
        username.setPromptText("Username");
        final PasswordField password = new PasswordField();
        password.setPromptText("Password");
        grid.add(new Label("Username:"), 0, 0);
        grid.add(username, 1, 0);
        grid.add(new Label("Password:"), 0, 1);
        grid.add(password, 1, 1);
        dialog.getDialogPane().setContent(grid);
        dialog.setResultConverter(dialogButton -> {
            if (dialogButton == loginButtonType) {
                return new Pair<>(true, new OrderedPair<>(username.getText(), password.getText()));
            } else if (dialogButton == createAccountButtonType) {
                return new Pair<>(false, new OrderedPair<>(username.getText(), password.getText()));
            }
            return null;
        });
        final Optional<Pair<Boolean, OrderedPair<String>>> result = dialog.showAndWait();
        return result;
    }
}
