package edu.csuci.comp420term.datageneration;

import edu.csuci.comp420term.entities.Ability;
import edu.csuci.comp420term.entities.EggGroup;
import edu.csuci.comp420term.entities.Pokemon;
import edu.csuci.comp420term.entities.Type;
import org.apache.commons.text.WordUtils;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Predicate;

import static edu.csuci.comp420term.datageneration.JSONApiHelpers.fetchAPICall;
import static edu.csuci.comp420term.entities.JSONEntity.filterJsonArray;


public class PokemonGenerator {

    private static final Map<String, Type> TYPE_TABLE = PokemonGenerator.buildTypeTable();

    private final int pokedexId;
    private final String mainApiEndpoint;

    public PokemonGenerator(int pokedexId) {
        this.pokedexId = pokedexId;
        mainApiEndpoint = String.format("https://pokeapi.co/api/v2/pokemon/%d", pokedexId);
    }

    public Pokemon generate() throws Exception {
        final JSONObject pokemonJSON = fetchPokemonJSON();
        final String pokemonName = WordUtils.capitalize(pokemonJSON.getString("name"));

        final JSONArray types = pokemonJSON.getJSONArray("types");
        final Type primaryType = optionalTypeName(types, 0).orElseThrow();
        final Optional<Type> secondaryType = optionalTypeName(types, 1);

        final JSONObject speciesJSON = fetchSpeciesJSON(pokemonJSON);
        final JSONArray eggGroups = speciesJSON.getJSONArray("egg_groups");
        EggGroup primaryEggGroup = optionalEggGroupNameAtIndex(eggGroups, 0).orElseThrow();
        Optional<EggGroup> secondaryEggGroup = optionalEggGroupNameAtIndex(eggGroups, 1);

        final String imageUrl = getImageUrl(pokemonJSON);

        final JSONArray abilities = pokemonJSON.getJSONArray("abilities");
        final Predicate<JSONObject> isAbilityHidden = ability -> ability.getBoolean("is_hidden");
        final List<JSONObject> nonHiddenAbilities = filterJsonArray(abilities, Predicate.not(isAbilityHidden));
        final List<JSONObject> hiddenAbilities = filterJsonArray(abilities, isAbilityHidden);

        final Ability primaryAbility = getAbilityFromIndex(nonHiddenAbilities, 0);
        final Optional<Ability> secondaryAbility = optionalAbilityAtIndex(nonHiddenAbilities, 1);
        final Optional<Ability> hiddenAbility = optionalAbilityAtIndex(hiddenAbilities, 0);

        final String description = getDescription(speciesJSON);

        final JSONObject pokemonRowData = new JSONObject();
        pokemonRowData.put("id", this.pokedexId);
        pokemonRowData.put("name", pokemonName);
        pokemonRowData.put("primary_type", primaryType.toJSON());
        secondaryType.ifPresent(type -> pokemonRowData.put("secondary_type", type.toJSON()));
        pokemonRowData.put("primary_egg_group", primaryEggGroup.toJSON());
        secondaryEggGroup.ifPresent(eggGroup -> pokemonRowData.put("secondary_egg_group", eggGroup.toJSON()));
        pokemonRowData.put("image_file_path", imageUrl);
        pokemonRowData.put("primary_ability", primaryAbility.toJSON());
        secondaryAbility.ifPresent(ability -> pokemonRowData.put("secondary_ability", ability.toJSON()));
        hiddenAbility.ifPresent(ability -> pokemonRowData.put("hidden_ability", ability.toJSON()));
        pokemonRowData.put("description", description);
        return new Pokemon(
                this.pokedexId,
                primaryType,
                secondaryType.orElse(null),
                primaryEggGroup,
                secondaryEggGroup.orElse(null),
                primaryAbility,
                secondaryAbility.orElse(null),
                hiddenAbility.orElse(null),
                pokemonName,
                description,
                imageUrl
        );
    }

    private String getDescription(JSONObject speciesJSON) {
        final JSONArray flavorTextEntries = speciesJSON.getJSONArray("flavor_text_entries");
        final List<JSONObject> englishEntries = filterJsonArray(flavorTextEntries, entry -> entry.getJSONObject("language").getString("name").equals("en"));
        final JSONObject firstEnglishEntry = englishEntries.get(0);
        final String description = firstEnglishEntry.getString("flavor_text");
        return description.replace('\n', ' ').replaceAll("\f", " ");
    }

    private Optional<Ability> optionalAbilityAtIndex(List<JSONObject> abilities, int abilityIndex) throws IOException {
        return abilities.size() > abilityIndex ? Optional.of(getAbilityFromIndex(abilities, abilityIndex)) : Optional.empty();
    }

    private Ability getAbilityFromIndex(List<JSONObject> abilities, int abilityIndex) throws IOException {
        final JSONObject abilitySlot = abilities.get(abilityIndex);
        final JSONObject ability = abilitySlot.getJSONObject("ability");
        AbilityGenerator generator = new AbilityGenerator(ability.getString("url"));
        return generator.generate();
    }

    private String getImageUrl(JSONObject pokemonJSON) {
        final JSONObject spritesJSON = pokemonJSON.getJSONObject("sprites");
        final JSONObject otherSprites = spritesJSON.getJSONObject("other");
        final JSONObject officialArtworkJSON = otherSprites.getJSONObject("official-artwork");
        return officialArtworkJSON.getString("front_default");
    }

    private Optional<EggGroup> optionalEggGroupNameAtIndex(JSONArray eggGroups, int eggGroupIndex) throws IOException {
        return eggGroups.length() > eggGroupIndex ? Optional.of(eggGroupNameAtIndex(eggGroups, eggGroupIndex)) : Optional.empty();
    }

    private EggGroup eggGroupNameAtIndex(JSONArray eggGroups, int eggGroupIndex) throws IOException {
        final JSONObject eggGroup = eggGroups.getJSONObject(eggGroupIndex);
        final EggGroupGenerator eggGroupGenerator = new EggGroupGenerator(eggGroup.getString("url"));
        return eggGroupGenerator.generate();
    }

    private Optional<Type> optionalTypeName(JSONArray types, int typeSlotIndex) {
        final Optional<String> typeName = types.length() > typeSlotIndex ? Optional.of(typeNameFromTypeSlot(types, typeSlotIndex)) : Optional.empty();
        return typeName.map(TYPE_TABLE::get);
    }

    private String typeNameFromTypeSlot(JSONArray types, int typeSlotIndex) {
        final JSONObject typeSlot = types.getJSONObject(typeSlotIndex);
        final JSONObject type = typeSlot.getJSONObject("type");
        return type.getString("name");
    }

    private JSONObject fetchSpeciesJSON(JSONObject pokemonJSON) throws IOException {
        final JSONObject speciesUrlObject = pokemonJSON.getJSONObject("species");
        final String speciesUrl = speciesUrlObject.getString("url");
        return fetchAPICall(speciesUrl);
    }

    private JSONObject fetchPokemonJSON() throws IOException {
        return fetchAPICall(this.mainApiEndpoint);
    }

    private static Map<String, Type> buildTypeTable() {
        Map<String, Type> typeTable = new HashMap<>();
        typeTable.put("Normal".toLowerCase(), new Type(1, "Normal", "A8A878"));
        typeTable.put("Fighting".toLowerCase(), new Type(2, "Fighting", "C03028"));
        typeTable.put("Flying".toLowerCase(), new Type(3, "Flying", "A890F0"));
        typeTable.put("Poison".toLowerCase(), new Type(4, "Poison", "A040A0"));
        typeTable.put("Ground".toLowerCase(), new Type(5, "Ground", "E0C068"));
        typeTable.put("Rock".toLowerCase(), new Type(6, "Rock", "B8A038"));
        typeTable.put("Bug".toLowerCase(), new Type(7, "Bug", "A8B820"));
        typeTable.put("Ghost".toLowerCase(), new Type(8, "Ghost", "705898"));
        typeTable.put("Steel".toLowerCase(), new Type(9, "Steel", "B8B8D0"));
        typeTable.put("Fire".toLowerCase(), new Type(10, "Fire", "F08030"));
        typeTable.put("Water".toLowerCase(), new Type(11, "Water", "6890F0"));
        typeTable.put("Grass".toLowerCase(), new Type(12, "Grass", "78C850"));
        typeTable.put("Electric".toLowerCase(), new Type(13, "Electric", "F8D030"));
        typeTable.put("Psychic".toLowerCase(), new Type(14, "Psychic", "F85888"));
        typeTable.put("Ice".toLowerCase(), new Type(15, "Ice", "98D8D8"));
        typeTable.put("Dragon".toLowerCase(), new Type(16, "Dragon", "7038F8"));
        typeTable.put("Dark".toLowerCase(), new Type(17, "Dark", "705848"));
        typeTable.put("Fairy".toLowerCase(), new Type(18, "Fairy", "EE99AC"));
        return typeTable;
    }


}
