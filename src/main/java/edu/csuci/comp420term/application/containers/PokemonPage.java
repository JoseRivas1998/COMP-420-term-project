package edu.csuci.comp420term.application.containers;

import edu.csuci.comp420term.application.ApplicationContext;
import edu.csuci.comp420term.application.components.EvolutionChain;
import edu.csuci.comp420term.application.components.StatView;
import edu.csuci.comp420term.application.components.TypeLabel;
import edu.csuci.comp420term.application.dialogs.ErrorDialog;
import edu.csuci.comp420term.data.ImageLoader;
import edu.csuci.comp420term.entities.*;
import edu.csuci.comp420term.repos.TypeRepository;
import javafx.application.Application;
import javafx.application.Platform;
import javafx.geometry.HPos;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.ScrollPane;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.*;
import javafx.scene.paint.Color;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.stream.Collectors;
import java.util.stream.Stream;


public class PokemonPage extends ScrollPane {

    private final GridPane layout;
    private final Pokemon pokemon;
    private final AtomicBoolean changing;

    public PokemonPage(Pokemon pokemon) {
        super();
        this.layout = new GridPane();
        this.pokemon = pokemon;
//        layout.setGridLinesVisible(true);
        layout.setHgap(ApplicationContext.SPACING);
        layout.setVgap(ApplicationContext.SPACING);
        setPadding(new Insets(ApplicationContext.SPACING * 2));

        changing = new AtomicBoolean(false);
        addButtons(pokemon);

        addNameAndId(pokemon);

        addFirstColumn(pokemon);
        addSecondColumn(pokemon);

        setFitToWidth(true);
        setHbarPolicy(ScrollBarPolicy.NEVER);
        setContent(layout);
        layout.setStyle("-fx-background-color: white;");
        setStyle("-fx-background-color: white;");

    }

    private void addButtons(Pokemon pokemon) {
        final GridPane buttons = new GridPane();
        final Button previous = new Button(String.format("#%03d", pokemon.id - 1));
        final Button back = new Button("Back");
        final Button next = new Button(String.format("#%03d", pokemon.id + 1));
        previous.setOnAction(event -> changePokemon(previous, back, next, pokemon.id - 1));
        next.setOnAction(event -> changePokemon(previous, back, next, pokemon.id + 1));
        back.setOnAction(event -> ApplicationContext.appContext().mainPane.goToHome());
        previous.setMaxWidth(Double.MAX_VALUE);
        back.setMaxWidth(Double.MAX_VALUE);
        next.setMaxWidth(Double.MAX_VALUE);
        buttons.add(previous, 0, 0);
        buttons.add(back, 1, 0);
        buttons.add(next, 2, 0);
        GridPane.setHgrow(previous, Priority.ALWAYS);
        GridPane.setHgrow(back, Priority.ALWAYS);
        GridPane.setHgrow(next, Priority.ALWAYS);
        GridPane.setHgrow(buttons, Priority.ALWAYS);
        GridPane.setColumnSpan(buttons, 2);
        this.layout.add(buttons, 0, 0);
    }

    private void changePokemon(Button previous, Button back, Button next, int nextid) {
        if (changing.get()) return;
        changing.set(true);
        previous.setDisable(true);
        back.setDisable(true);
        next.setDisable(true);
        asyncNavigateToNextPokemon(previous, back, next, nextid);
    }

    private void asyncNavigateToNextPokemon(Button previous, Button back, Button next, int nextid) {
        new Thread(() -> navigateToNextPokemon(previous, back, next, nextid)).start();
    }

    private void navigateToNextPokemon(Button previous, Button back, Button next, int nextid) {
        try {
            final ApplicationContext appContext = ApplicationContext.appContext();
            final Pokemon targetPokemon = appContext.pokemonRepo.findById(nextid);
            Platform.runLater(() -> {
                appContext.mainPane.setCenter(new PokemonPage(targetPokemon));
            });
        } catch (SQLException throwables) {
            changing.set(false);
            previous.setDisable(false);
            back.setDisable(false);
            next.setDisable(false);
        }
    }

    private ColumnConstraints buildColumnConstraints(double percentWidth) {
        ColumnConstraints columnConstraints = new ColumnConstraints();
        columnConstraints.setPercentWidth(percentWidth);
        return columnConstraints;
    }

    private void addSecondColumn(Pokemon pokemon) {
        final Label descriptionLabel = new Label(pokemon.description);
        descriptionLabel.setWrapText(true);
        final VBox secondColumn = new VBox(ApplicationContext.SPACING / 2);
        secondColumn.getChildren().addAll(descriptionLabel);
        addType(pokemon, secondColumn);
        addTypeEffectivenesses(secondColumn);
        addEvolutionChain(pokemon, secondColumn);
        addAlternateForms(pokemon, secondColumn);

        addPartyButton(pokemon, secondColumn);

        secondColumn.setStyle("-fx-background-color: white");
        GridPane.setHgrow(secondColumn, Priority.ALWAYS);
        layout.add(secondColumn, 1, 2);
    }

    private void addPartyButton(Pokemon pokemon, VBox secondColumn) {
        final Button addToParty = new Button("Add to Party!");
        addToParty.setOnAction(event -> {
            addToParty.setDisable(true);
            addToPartyAsync(pokemon, addToParty);
        });
        secondColumn.getChildren().addAll(addToParty);
    }

    private void addToPartyAsync(Pokemon pokemon, Button addToParty) {
        new Thread(() -> addPokemonToParty(pokemon, addToParty)).start();
    }

    private void addPokemonToParty(Pokemon pokemon, Button addToParty) {
        final ApplicationContext appContext = ApplicationContext.appContext();
        try {
            final String username = appContext.userRepo.currentUser();
            appContext.partyRepo.addToParty(username, this.pokemon);
            Platform.runLater(() -> {
                final Alert alert = new Alert(Alert.AlertType.INFORMATION);
                alert.setTitle("Pokemon Added");
                alert.setHeaderText(pokemon.name + " was added to your party!");
                alert.setContentText(null);
                alert.initOwner(appContext.mainStage);
                alert.showAndWait();
                addToParty.setDisable(false);
            });
        } catch (Exception throwables) {
            Platform.runLater(() -> {
                ErrorDialog errorDialog = new ErrorDialog(throwables);
                errorDialog.initOwner(appContext.mainStage);
                errorDialog.showAndWait();
                addToParty.setDisable(false);
            });
        }
    }

    private void addFirstColumn(Pokemon pokemon) {
        final GridPane firstColumn = new GridPane();
        addImage(pokemon, firstColumn);
        addStats(pokemon, firstColumn);
        addAbilities(pokemon, firstColumn);
        final Label eggGroupsTitle = new Label("Egg Group");
        eggGroupsTitle.setStyle("-fx-padding: 10px 0px 10px 0px; -fx-font-size: 2em");
        firstColumn.add(eggGroupsTitle, 0, 4);
        final List<EggGroup> eggGroups = new ArrayList<>();
        eggGroups.add(pokemon.primaryEggGroup);
        pokemon.getSecondaryEggGroup().ifPresent(eggGroups::add);
        final HBox eggGroupList = new HBox(ApplicationContext.SPACING);
        eggGroupList.getChildren().addAll(eggGroups.stream()
                .map(eggGroup -> new Label(eggGroup.name))
                .collect(Collectors.toList()));
        firstColumn.add(eggGroupList, 0, 5);
        firstColumn.setStyle("-fx-background-color: white");
        layout.add(firstColumn, 0, 2);
    }

    private void addAbilities(Pokemon pokemon, GridPane firstColumn) {
        final Label abilitiesTitle = new Label("Abilities");
        abilitiesTitle.setStyle("-fx-padding: 10px 0px 10px 0px; -fx-font-size: 2em");
        firstColumn.add(abilitiesTitle, 0, 2);
        final VBox abilityList = buildAbilityList(getPokemonAbilities(pokemon));
        firstColumn.add(abilityList, 0, 3);
    }

    private void addStats(Pokemon pokemon, GridPane firstColumn) {
        final StatView statView = new StatView(pokemon.baseStats);
        firstColumn.add(statView, 0, 1);
    }

    private void addImage(Pokemon pokemon, GridPane firstColumn) {
        final Image image = ApplicationContext.appContext().imageLoader.loadImage(pokemon.imageFilePath);
        final ImageView imageView = new ImageView(image);
        firstColumn.add(imageView, 0, 0);
    }

    private List<Ability> getPokemonAbilities(Pokemon pokemon) {
        List<Ability> abilities = new ArrayList<>();
        abilities.add(pokemon.primaryAbility);
        pokemon.getSecondaryAbility().ifPresent(abilities::add);
        pokemon.getHiddenAbility().ifPresent(abilities::add);
        return abilities;
    }

    private VBox buildAbilityList(List<Ability> abilities) {
        final VBox abilityList = new VBox(ApplicationContext.SPACING);
        for (Ability ability : abilities) {
            final Label abilityTitle = new Label(ability.name);
            abilityTitle.setStyle("-fx-padding: 10px 0px 10px 0px; -fx-font-size: 1.25em");
            final Label abilityEffect = new Label(ability.effect);
            abilityEffect.setWrapText(true);
            abilityEffect.setMaxWidth(500);
            abilityList.getChildren().add(abilityTitle);
            abilityList.getChildren().add(abilityEffect);
        }
        return abilityList;
    }

    private void addTypeEffectivenesses(VBox secondColumn) {
        final VBox typeEffectivenesses = new VBox(ApplicationContext.SPACING / 2);
        asyncLoadTypeEffectivenesses(typeEffectivenesses);
        secondColumn.getChildren().add(typeEffectivenesses);
    }

    private void asyncLoadTypeEffectivenesses(VBox typeEffectivenesses) {
        new Thread(() -> loadTypeEffectivenesses(typeEffectivenesses)).start();
    }

    private void loadTypeEffectivenesses(VBox typeEffectivenesses) {
        try {
            final TypeRepository typeRepo = ApplicationContext.appContext().typeRepo;
            final List<AttackTypeMultiplier> attackMultipliers =
                    typeRepo.findAttackTypeMultiplierForPokemon(this.pokemon);
            final Comparator<AttackTypeMultiplier> byEffect =
                    (o1, o2) -> Double.compare(o2.multiplier, o1.multiplier);

            final Comparator<AttackTypeMultiplier> thenByName =
                    byEffect.thenComparing(attackTypeMultiplier -> attackTypeMultiplier.attack.name);
            attackMultipliers.sort(thenByName);
            Platform.runLater(() -> {
                addTypeMulipliers(typeEffectivenesses, attackMultipliers);
            });

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    private void addTypeMulipliers(VBox typeEffectivenesses, List<AttackTypeMultiplier> attackMultipliers) {
        double currentMultiplier = -1.0;
        FlowPane currentFlowPane = new FlowPane();
        currentFlowPane.setHgap(ApplicationContext.SPACING / 2);
        currentFlowPane.setVgap(ApplicationContext.SPACING / 2);
        for (AttackTypeMultiplier attackMultiplier : attackMultipliers) {
            if (Double.compare(currentMultiplier, attackMultiplier.multiplier) != 0) {
                final String labelText = String.format("Takes %.2fx Damage From", attackMultiplier.multiplier);
                final Label effectLabel = new Label(labelText);
                effectLabel.setStyle("-fx-padding: 10px 0px 10px 0px; -fx-font-size: 1.5em");
                typeEffectivenesses.getChildren().addAll(currentFlowPane);
                typeEffectivenesses.getChildren().addAll(effectLabel);
                currentFlowPane = new FlowPane();
                currentFlowPane.setHgap(ApplicationContext.SPACING / 2);
                currentFlowPane.setVgap(ApplicationContext.SPACING / 2);
            }
            currentMultiplier = attackMultiplier.multiplier;
            currentFlowPane.getChildren().add(new TypeLabel(attackMultiplier.attack));
        }
        typeEffectivenesses.getChildren().addAll(currentFlowPane);
    }

    private void addType(Pokemon pokemon, VBox secondColumn) {
        final Label typesTitle = new Label("Type");
        typesTitle.setStyle("-fx-padding: 10px 0px 10px 0px; -fx-font-size: 2em");
        final TypeLabel primaryTypeLabel = new TypeLabel(pokemon.primaryType);
        HBox typesBox = new HBox(ApplicationContext.SPACING / 2);
        typesBox.getChildren().addAll(primaryTypeLabel);
        pokemon.getSecondaryType().ifPresent(type -> typesBox.getChildren().addAll(new TypeLabel(type)));
        secondColumn.getChildren().addAll(typesTitle);
        secondColumn.getChildren().addAll(typesBox);
    }

    private void addEvolutionChain(Pokemon pokemon, VBox secondColumn) {
        if (pokemon.evolutionMethods.size() > 0) {
            EvolutionChain evolutionChain = new EvolutionChain(this.pokemon);
            final Label evolutionsTitle = new Label("Evolutions");
            evolutionsTitle.setStyle("-fx-padding: 10px 0px 10px 0px; -fx-font-size: 2em");
            secondColumn.getChildren().add(evolutionsTitle);
            secondColumn.getChildren().add(evolutionChain);
        }
    }

    private void addAlternateForms(Pokemon pokemon, VBox secondColumn) {
        if (pokemon.alternateForms.size() > 0) {
            ScrollPane alterFormsScrollPane = new ScrollPane();
            alterFormsScrollPane.setVbarPolicy(ScrollBarPolicy.NEVER);
            GridPane gridPane = new GridPane();
            final ImageLoader imageLoader = ApplicationContext.appContext().imageLoader;
            for (int i = 0; i < pokemon.alternateForms.size(); i++) {
                final AlternateForm alternateForm = pokemon.alternateForms.get(i);
                final String imageUrl = alternateForm.imageUrl;
                final Image alternateFormImage = imageLoader.loadImage(imageUrl);
                final ImageView alternateFormImageView = new ImageView(alternateFormImage);
                alternateFormImageView.setPreserveRatio(true);
                alternateFormImageView.setFitHeight(100);
                final Label nameLabel = new Label(alternateForm.name);
                GridPane.setVgrow(nameLabel, Priority.ALWAYS);
                GridPane.setHalignment(nameLabel, HPos.CENTER);
                gridPane.add(alternateFormImageView, i, 0);
                gridPane.add(nameLabel, i, 1);
            }
            alterFormsScrollPane.setContent(gridPane);
            alterFormsScrollPane.setMinHeight(140);
            final Label altFormTitle = new Label("Alternate Forms");
            altFormTitle.setStyle("-fx-padding: 10px 0px 10px 0px; -fx-font-size: 2em");
            secondColumn.getChildren().addAll(altFormTitle, alterFormsScrollPane);
        }
    }

    private void addNameAndId(Pokemon pokemon) {
        final HBox pokemonNameAndIdBox = new HBox(ApplicationContext.SPACING / 2);
        final Label nameLabel = new Label(pokemon.name);
        final Label idLabel = new Label(String.format("#%03d", pokemon.id));
        nameLabel.setStyle("-fx-font-size: 3em;");
        idLabel.setStyle("-fx-font-size: 3em;");
        idLabel.setTextFill(Color.web("#777"));
        pokemonNameAndIdBox.getChildren().addAll(nameLabel, idLabel);
        pokemonNameAndIdBox.setAlignment(Pos.CENTER);
        pokemonNameAndIdBox.setStyle("-fx-background-color: white;");
        GridPane.setHgrow(pokemonNameAndIdBox, Priority.ALWAYS);
        GridPane.setColumnSpan(pokemonNameAndIdBox, 2);
        layout.add(pokemonNameAndIdBox, 0, 1);
    }

}
