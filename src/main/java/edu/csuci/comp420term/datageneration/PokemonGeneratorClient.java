package edu.csuci.comp420term.datageneration;

import edu.csuci.comp420term.data.ConnectionBuilder;
import edu.csuci.comp420term.entities.Ability;
import edu.csuci.comp420term.entities.EggGroup;
import edu.csuci.comp420term.entities.Pokemon;

import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.sql.*;
import java.util.*;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;

public class PokemonGeneratorClient {

    public static final int NUM_POKEMON_TO_FETCH = 807;
    public static final String SQL_FILE_NAME = "sql/pokemon_data.sql";

    public static void main(String[] args) throws InterruptedException, SQLException, IOException {
        final List<Thread> threads = new ArrayList<>();
        final List<Pokemon> pokemons = new ArrayList<>();
        for (int i = 1; i <= NUM_POKEMON_TO_FETCH; i++) {
            final int pokedexNum = i;
            Thread t = new Thread(() -> {
                try {
                    final PokemonGenerator pokemonGenerator = new PokemonGenerator(pokedexNum);
                    final Pokemon pokemon = pokemonGenerator.generate();
                    synchronized (PokemonGeneratorClient.class) {
                        pokemons.add(pokemon);
                    }
                } catch (Exception exception) {
                    exception.printStackTrace();
                }
            });
            threads.add(t);
        }
        threads.forEach(Thread::start);
        for (Thread thread : threads) {
            thread.join();
        }
        pokemons.sort(Pokemon::compareTo);
        final Set<Ability> abilities = new TreeSet<>(Comparator.comparing(ability -> ability.id));
        final Set<EggGroup> eggGroups = new TreeSet<>(Comparator.comparing(eggGroup -> eggGroup.id));
        for (Pokemon pokemonObject : pokemons) {
            abilities.add(pokemonObject.primaryAbility);
            pokemonObject.getSecondaryAbility().ifPresent(abilities::add);
            pokemonObject.getHiddenAbility().ifPresent(abilities::add);

            eggGroups.add(pokemonObject.primaryEggGroup);
            pokemonObject.getSecondaryEggGroup().ifPresent(eggGroups::add);
        }

        final List<String> insertEggGroupSQLStatements = new ArrayList<>();
        final List<String> insertAbilitySQLStatements = new ArrayList<>();
        final List<String> insertPokemonSQLStatements = new ArrayList<>();

        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement insertEggGroup = connection.prepareStatement("INSERT INTO EGG_GROUP(EGG_GROUP_ID, EGG_GROUP_NAME) VALUE (?, ?);");
             PreparedStatement insertAbility = connection.prepareStatement("INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (?, ?, ?);");
             PreparedStatement insertPokemon = connection.prepareStatement("INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,\r\n" +
                     "                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,\r\n" +
                     "                    POKEMON_IMAGE_URL) VALUE (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);")) {
            for (EggGroup eggGroup : eggGroups) {
                insertEggGroup.setInt(1, eggGroup.id);
                insertEggGroup.setString(2, eggGroup.name);
                insertEggGroupSQLStatements.add(getInsertSQL(insertEggGroup));
            }
            for (Ability ability : abilities) {
                insertAbility.setInt(1, ability.id);
                insertAbility.setString(2, ability.name);
                insertAbility.setString(3, ability.effect);
                insertAbilitySQLStatements.add(getInsertSQL(insertAbility));
            }
            for (Pokemon pokemon : pokemons) {
                insertPokemon.setInt(1, pokemon.id);
                insertPokemon.setInt(2, pokemon.primaryType.id);
                setOptionalIntField(insertPokemon, 3, pokemon::getSecondaryType, type -> type.id);
                insertPokemon.setInt(4, pokemon.primaryEggGroup.id);
                setOptionalIntField(insertPokemon, 5, pokemon::getSecondaryEggGroup, eggGroup -> eggGroup.id);
                insertPokemon.setInt(6, pokemon.primaryAbility.id);
                setOptionalIntField(insertPokemon, 7, pokemon::getSecondaryAbility, ability -> ability.id);
                setOptionalIntField(insertPokemon, 8, pokemon::getHiddenAbility, ability -> ability.id);
                insertPokemon.setString(9, pokemon.name);
                insertPokemon.setString(10, pokemon.description);
                insertPokemon.setString(11, pokemon.imageFilePath);
                insertPokemonSQLStatements.add(getInsertSQL(insertPokemon));
            }

        }

        String sqlFileContent = "USE pokemondb;\r\n" +
                "\r\n" +
                "DELETE\r\n" +
                "FROM POKEMON\r\n" +
                "WHERE TRUE;\r\n" +
                "\r\n" +
                "DELETE\r\n" +
                "FROM EGG_GROUP\r\n" +
                "WHERE TRUE;\r\n" +
                "\r\n" +
                "DELETE\r\n" +
                "FROM ABILITY\r\n" +
                "WHERE TRUE;\r\n" +
                "\r\n" +
                insertStatementListToSingleString(insertEggGroupSQLStatements) +
                "\r\n" +
                insertStatementListToSingleString(insertAbilitySQLStatements)
                +
                "\r\n" +
                insertStatementListToSingleString(insertPokemonSQLStatements);

        try (FileWriter sqlFileWriter = new FileWriter(SQL_FILE_NAME, StandardCharsets.UTF_8)) {
            sqlFileWriter.write(sqlFileContent);
        }
    }

    private static <T> void setOptionalIntField(PreparedStatement statement, int parameterIndex, Supplier<Optional<T>> fieldSupplier, ToIntFunction<T> toIntFunction) throws SQLException {
        final Optional<T> field = fieldSupplier.get();
        if (field.isPresent()) {
            statement.setInt(parameterIndex, toIntFunction.applyAsInt(field.get()));
        } else {
            statement.setNull(parameterIndex, Types.INTEGER);
        }
    }

    private static String insertStatementListToSingleString(List<String> insertStatements) {
        return String.join("\r\n", insertStatements.toArray(String[]::new)) + "\r\n";
    }

    private static String getInsertSQL(PreparedStatement preparedStatement) {
        final String preparesStatementString = preparedStatement.toString();
        final int indexOfSQL = preparesStatementString.indexOf("INSERT INTO");
        return preparesStatementString.substring(indexOfSQL);
    }

}
