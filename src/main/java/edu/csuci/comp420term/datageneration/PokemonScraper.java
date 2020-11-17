package edu.csuci.comp420term.datageneration;

import edu.csuci.comp420term.entities.Ability;
import org.apache.commons.text.WordUtils;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.util.List;
import java.util.Optional;
import java.util.function.Predicate;

import static edu.csuci.comp420term.datageneration.JSONApiHelpers.fetchAPICall;
import static edu.csuci.comp420term.entities.JSONEntity.filterJsonArray;


public class PokemonScraper {

    private final int pokedexId;
    private final String mainApiEndpoint;

    public PokemonScraper(int pokedexId) {
        this.pokedexId = pokedexId;
        mainApiEndpoint = String.format("https://pokeapi.co/api/v2/pokemon/%d", pokedexId);
    }

    public JSONObject scrape() throws Exception {
        final JSONObject pokemonJSON = fetchPokemonJSON();
        final String pokemonName = WordUtils.capitalize(pokemonJSON.getString("name"));

        final JSONArray types = pokemonJSON.getJSONArray("types");
        final Optional<String> primaryType = optionalTypeName(types, 0);
        final Optional<String> secondaryType = optionalTypeName(types, 1);

        final JSONObject speciesJSON = fetchSpeciesJSON(pokemonJSON);
        final JSONArray eggGroups = speciesJSON.getJSONArray("egg_groups");
        Optional<String> primaryEggGroup = optionalEggGroupNameAtIndex(eggGroups, 0);
        Optional<String> secondaryEggGroup = optionalEggGroupNameAtIndex(eggGroups, 1);

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
        pokemonRowData.put("primary_type", primaryType.orElse(null));
        pokemonRowData.put("secondary_type", secondaryType.orElse(null));
        pokemonRowData.put("primary_egg_group", primaryEggGroup.orElse(null));
        pokemonRowData.put("secondary_egg_group", secondaryEggGroup.orElse(null));
        pokemonRowData.put("image_file_path", imageUrl);
        pokemonRowData.put("primary_ability", primaryAbility.toJSON());
        secondaryAbility.ifPresent(ability -> pokemonRowData.put("secondary_ability", ability.toJSON()));
        hiddenAbility.ifPresent(ability -> pokemonRowData.put("hidden_ability", ability.toJSON()));
        pokemonRowData.put("description", description);
        return pokemonRowData;
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

    private Optional<String> optionalEggGroupNameAtIndex(JSONArray eggGroups, int eggGroupIndex) {
        return eggGroups.length() > eggGroupIndex ? Optional.of(eggGroupNameAtIndex(eggGroups, eggGroupIndex)) : Optional.empty();
    }

    private String eggGroupNameAtIndex(JSONArray eggGroups, int eggGroupIndex) {
        final JSONObject eggGroup = eggGroups.getJSONObject(eggGroupIndex);
        return eggGroup.getString("name");
    }

    private Optional<String> optionalTypeName(JSONArray types, int typeSlotIndex) {
        return types.length() > typeSlotIndex ? Optional.of(typeNameFromTypeSlot(types, typeSlotIndex)) : Optional.empty();
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


}
