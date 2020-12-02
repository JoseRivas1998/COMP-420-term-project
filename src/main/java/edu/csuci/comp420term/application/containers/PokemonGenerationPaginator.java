package edu.csuci.comp420term.application.containers;

import edu.csuci.comp420term.application.ApplicationContext;
import edu.csuci.comp420term.application.components.PokemonGrid;
import edu.csuci.comp420term.entities.Pokemon;
import edu.csuci.comp420term.repos.PokemonRepository;
import edu.csuci.comp420term.utils.OrderedPair;
import javafx.application.Platform;
import javafx.geometry.Insets;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.ScrollPane;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;

import java.sql.SQLException;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.stream.Collectors;

public class PokemonGenerationPaginator extends BorderPane {

    private final int generation;
    private final int maxPages;
    private int currentPage;

    private final Label rangeLabel;
    private final Button nextPageBtn;
    private final Button previousPageBtn;
    private final Button skipToFirstBtn;
    private final Button skipToLastBtn;

    private AtomicBoolean initiallyLoaded;

    public PokemonGenerationPaginator(int generation) {
        super();
        this.generation = generation;
        this.maxPages = getMaxPages();
        this.currentPage = 0;
        rangeLabel = new Label();
        previousPageBtn = new Button("<");
        previousPageBtn.setOnAction(event -> {
            this.currentPage = Math.max(this.currentPage - 1, 0);
            updateDisableStateOfButtons();
            this.asyncLoadCurrentPage();
        });
        skipToFirstBtn = new Button("|<");
        skipToFirstBtn.setOnAction(event -> {
            this.currentPage = 0;
            updateDisableStateOfButtons();
            this.asyncLoadCurrentPage();
        });
        nextPageBtn = new Button(">");
        nextPageBtn.setOnAction(event -> {
            this.currentPage = Math.min(this.currentPage + 1, this.maxPages - 1);
            updateDisableStateOfButtons();
            this.asyncLoadCurrentPage();
        });
        skipToLastBtn = new Button(">|");
        skipToLastBtn.setOnAction(event -> {
            this.currentPage = this.maxPages - 1;
            updateDisableStateOfButtons();
            this.asyncLoadCurrentPage();
        });
        updateDisableStateOfButtons();
        final HBox controlBox = new HBox(5,
                skipToFirstBtn,
                previousPageBtn,
                rangeLabel,
                nextPageBtn,
                skipToLastBtn);
        controlBox.setPadding(new Insets(ApplicationContext.SPACING / 2));
        this.setTop(controlBox);
        initiallyLoaded = new AtomicBoolean(false);
    }

    public void initialLoad() {
        if (initiallyLoaded.get()) return;
        asyncLoadCurrentPage();
        initiallyLoaded.set(true);
    }

    private void updateDisableStateOfButtons() {
        this.nextPageBtn.setDisable(this.currentPage == this.maxPages - 1);
        this.skipToLastBtn.setDisable(this.currentPage == this.maxPages - 1);
        this.previousPageBtn.setDisable(this.currentPage == 0);
        this.skipToFirstBtn.setDisable(this.currentPage == 0);
    }

    private void asyncLoadCurrentPage() {
        this.setCenter(new Label("Loading"));
        new Thread(this::loadCurrentPage).start();
    }

    private synchronized void loadCurrentPage() {
        try {
            final PokemonRepository pokemonRepo = ApplicationContext.appContext().pokemonRepo;
            final List<Pokemon> pokemon = pokemonRepo.findAllInGenerationPage(this.generation,
                    this.currentPage, ApplicationContext.PAGE_SIZE);
            Platform.runLater(() -> {
                updatePageToNewList(pokemon);
            });
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    private void updatePageToNewList(List<Pokemon> pokemon) {
        final OrderedPair<Integer> pokemonRange = getPokemonRange(pokemon);

        rangeLabel.setText(String.format("#%03d - #%03d", pokemonRange.first, pokemonRange.second));

        final ScrollPane scrollPane = new ScrollPane(new PokemonGrid(pokemon, 4));
        scrollPane.setFitToWidth(true);
        scrollPane.setHbarPolicy(ScrollPane.ScrollBarPolicy.NEVER);
        setCenter(scrollPane);
    }

    private OrderedPair<Integer> getPokemonRange(List<Pokemon> pokemonList) {
        var pokemonIds = pokemonList.stream()
                .map(pokemon -> pokemon.id)
                .sorted()
                .collect(Collectors.toList());
        return new OrderedPair<>(pokemonIds.get(0), pokemonIds.get(pokemonIds.size() - 1));
    }

    private int getMaxPages() {
        final ApplicationContext appContext = ApplicationContext.appContext();
        try {
            return appContext.pokemonRepo.pagesInGeneration(this.generation, ApplicationContext.PAGE_SIZE);
        } catch (SQLException throwables) {
            return 0;
        }

    }

}
