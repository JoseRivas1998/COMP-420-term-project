package edu.csuci.comp420term.application.containers;

import javafx.scene.control.Tab;

public class GenerationTabPane extends Tab {

    public static final String[] NUMERALS = {"0", "I", "II", "III", "IV", "V", "VI", "VII", "VIII"};
    private final PokemonGenerationPaginator generationPaginator;

    public GenerationTabPane(int generation) {
        super("Gen " + NUMERALS[generation]);
        setClosable(false);
        generationPaginator = new PokemonGenerationPaginator(generation);
        setContent(generationPaginator);
    }

    public void initialLoad() {
        generationPaginator.initialLoad();
    }

}
