package edu.csuci.comp420term.application.containers;

import javafx.scene.control.Tab;

public class PartyTab extends Tab {

    private final PokemonPartyPane partyPane;

    public PartyTab() {
        super("Party");
        setClosable(false);
        partyPane = new PokemonPartyPane();
        setContent(partyPane);
        setOnSelectionChanged(event -> {
            if (isSelected()) {
                partyPane.refreshPartyPane();
            }
        });
    }

}
