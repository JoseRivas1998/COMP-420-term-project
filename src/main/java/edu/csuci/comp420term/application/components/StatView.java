package edu.csuci.comp420term.application.components;

import edu.csuci.comp420term.application.ApplicationContext;
import edu.csuci.comp420term.entities.BaseStat;
import edu.csuci.comp420term.entities.Stat;
import javafx.geometry.HPos;
import javafx.geometry.Insets;
import javafx.scene.control.Label;
import javafx.scene.control.ProgressBar;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.Priority;
import javafx.scene.layout.StackPane;

import java.util.List;

public class StatView extends GridPane {

    public StatView(List<BaseStat> baseStats) {
        super();
//        setGridLinesVisible(true);
        setPadding(new Insets(ApplicationContext.SPACING * 3));
        setHgap(ApplicationContext.SPACING / 2);
        setVgap(ApplicationContext.SPACING / 2);
        final Label title = new Label("Stats");
        title.setStyle("-fx-font-size: 1.5em");
        add(title, 0, 0);
        for (int i = 0; i < baseStats.size(); i++) {
            final BaseStat baseStat = baseStats.get(i);
            final Stat stat = baseStat.stat;
            addStatRow(i, stat.name, baseStat.statValue, 255.0);
        }
        final int totalStats = baseStats.stream()
                .mapToInt(baseStat -> baseStat.statValue)
                .sum();
        addStatRow(baseStats.size(), "Total", totalStats, 255 * baseStats.size());
        setStyle("-fx-background-color: #D9D9D9; -fx-background-radius: 15px");
    }

    private void addStatRow(int i, String statName, int statValue, double maxStatValue) {
        final StackPane statBar = new StackPane();
        final double statFraction = statValue / maxStatValue;
        final String statPercent = String.format("%.0f%%", (statFraction * 200) - 100);
        final String barStyle = "-fx-background-color: linear-gradient(" +
                "from " + statPercent + " 100% to 100% 100% ," +
                " #43B4FF 50% ," +
                " #EEEEEE 50% );";
        statBar.setStyle(barStyle);
        GridPane.setHgrow(statBar, Priority.ALWAYS);
        final Label statLabel = new Label(statName);
        GridPane.setHalignment(statLabel, HPos.RIGHT);
        add(statLabel, 0, i + 1);
        add(statBar, 1, i + 1);
        add(new Label(String.valueOf(statValue)), 2, i + 1);
    }

}
