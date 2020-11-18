package edu.csuci.comp420term.datageneration;

import edu.csuci.comp420term.data.ConnectionBuilder;
import edu.csuci.comp420term.entities.Ability;
import edu.csuci.comp420term.entities.EggGroup;
import edu.csuci.comp420term.entities.Pokemon;
import edu.csuci.comp420term.entities.Type;

import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.sql.*;
import java.util.*;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import java.util.stream.Collectors;

public class PokemonGeneratorClient {

    public static final int START_POKEDEX_ENTRY = 1;
    public static final int END_POKEDEX_ENTRY = 807;
    public static final String SQL_FILE_NAME = "sql/pokemon_data.sql";

    public static void main(String[] args) throws InterruptedException, SQLException, IOException {
        final List<Pokemon> pokemons = getPokemons();

        final Set<Ability> abilities = new TreeSet<>(Comparator.comparing(ability -> ability.id));
        final Set<EggGroup> eggGroups = new TreeSet<>(Comparator.comparing(eggGroup -> eggGroup.id));
        for (Pokemon pokemonObject : pokemons) {
            abilities.add(pokemonObject.primaryAbility);
            pokemonObject.getSecondaryAbility().ifPresent(abilities::add);
            pokemonObject.getHiddenAbility().ifPresent(abilities::add);

            eggGroups.add(pokemonObject.primaryEggGroup);
            pokemonObject.getSecondaryEggGroup().ifPresent(eggGroups::add);
        }

        final Set<Type> types = new TreeSet<>(Comparator.comparing(type -> type.id));
        types.addAll(PokemonGenerator.TYPE_TABLE.values());

        final List<String> insertEggGroupSQLStatements = new ArrayList<>();
        final List<String> insertAbilitySQLStatements = new ArrayList<>();
        final List<String> insertTypeSqlStatements = new ArrayList<>();
        final List<String> insertPokemonSQLStatements = new ArrayList<>();

        try (Connection connection = ConnectionBuilder.buildConnection();
             PreparedStatement insertEggGroup = connection.prepareStatement("INSERT INTO EGG_GROUP(EGG_GROUP_ID, EGG_GROUP_NAME) VALUE (?, ?);");
             PreparedStatement insertAbility = connection.prepareStatement("INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (?, ?, ?);");
             PreparedStatement insertType = connection.prepareStatement("INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (?, ?, ?);");
             PreparedStatement insertPokemon = connection.prepareStatement("INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,\r\n" +
                     "                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,\r\n" +
                     "                    POKEMON_IMAGE_URL) VALUE (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);")) {
            addAllEggGroupInsertStatements(eggGroups, insertEggGroupSQLStatements, insertEggGroup);
            addAllAbilityInsertStatements(abilities, insertAbilitySQLStatements, insertAbility);

            for (Type type : types) {
                insertType.setInt(1, type.id);
                insertType.setString(2, type.name);
                insertType.setString(3, type.colorHex);
                insertTypeSqlStatements.add(getInsertSQL(insertType));
            }

            addAllPokemonInsertStatements(pokemons, insertPokemonSQLStatements, insertPokemon);

        }

        final String deleteStatements = "DELETE\r\n" +
                "FROM POKEMON\r\n" +
                "WHERE TRUE;\r\n" +
                "\r\n" +
                "DELETE\r\n" +
                "FROM TYPE_EFFECTIVENESS\r\n" +
                "WHERE TRUE;\r\n" +
                "\r\n" +
                "DELETE\r\n" +
                "FROM TYPE\r\n" +
                "WHERE TRUE;\r\n" +
                "\r\n" +
                "DELETE\r\n" +
                "FROM EGG_GROUP\r\n" +
                "WHERE TRUE;\r\n" +
                "\r\n" +
                "DELETE\r\n" +
                "FROM ABILITY\r\n" +
                "WHERE TRUE;\r\n";

        String sqlFileContent = "USE pokemondb;\r\n" +
                "\r\n" +
                deleteStatements +
                "\r\n" +
                insertStatementListToSingleString(insertEggGroupSQLStatements) +
                "\r\n" +
                insertStatementListToSingleString(insertAbilitySQLStatements) +
                "\r\n" +
                insertStatementListToSingleString(insertTypeSqlStatements) +
                "\r\n" +
                TypeEffectivenessGenerator.generateTypeEffectivenessInsertSQL() +
                "\r\n" +
                insertStatementListToSingleString(insertPokemonSQLStatements);

        try (FileWriter sqlFileWriter = new FileWriter(SQL_FILE_NAME, StandardCharsets.UTF_8)) {
            sqlFileWriter.write(sqlFileContent);
        }
    }

    private static List<Pokemon> getPokemons() throws InterruptedException {
        final List<Thread> threads = new ArrayList<>();
        final List<Pokemon> pokemons = new ArrayList<>();
        for (int i = START_POKEDEX_ENTRY; i <= END_POKEDEX_ENTRY; i++) {
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
        return pokemons;
    }

    private static void addAllPokemonInsertStatements(List<Pokemon> pokemons, List<String> insertPokemonSQLStatements, PreparedStatement insertPokemon) throws SQLException {
        for (Pokemon pokemon : pokemons) {
            addPokemonInsertStatement(insertPokemonSQLStatements, insertPokemon, pokemon);
        }
    }

    private static void addAllAbilityInsertStatements(Set<Ability> abilities, List<String> insertAbilitySQLStatements, PreparedStatement insertAbility) throws SQLException {
        for (Ability ability : abilities) {
            addAbilityInsertStatement(insertAbilitySQLStatements, insertAbility, ability);
        }
    }

    private static void addAllEggGroupInsertStatements(Set<EggGroup> eggGroups, List<String> insertEggGroupSQLStatements, PreparedStatement insertEggGroup) throws SQLException {
        for (EggGroup eggGroup : eggGroups) {
            addEggGroupInsertStatement(insertEggGroupSQLStatements, insertEggGroup, eggGroup);
        }
    }

    private static void addPokemonInsertStatement(List<String> insertPokemonSQLStatements, PreparedStatement insertPokemon, Pokemon pokemon) throws SQLException {
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

    private static void addAbilityInsertStatement(List<String> insertAbilitySQLStatements, PreparedStatement insertAbility, Ability ability) throws SQLException {
        insertAbility.setInt(1, ability.id);
        insertAbility.setString(2, ability.name);
        insertAbility.setString(3, ability.effect);
        insertAbilitySQLStatements.add(getInsertSQL(insertAbility));
    }

    private static void addEggGroupInsertStatement(List<String> insertEggGroupSQLStatements, PreparedStatement insertEggGroup, EggGroup eggGroup) throws SQLException {
        insertEggGroup.setInt(1, eggGroup.id);
        insertEggGroup.setString(2, eggGroup.name);
        insertEggGroupSQLStatements.add(getInsertSQL(insertEggGroup));
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
