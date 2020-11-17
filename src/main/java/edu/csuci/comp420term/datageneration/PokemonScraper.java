package edu.csuci.comp420term.datageneration;

import org.apache.commons.io.IOUtils;
import org.apache.commons.text.WordUtils;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClients;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.function.Predicate;


public class PokemonScraper {

    private final int pokedexId;
    private final String mainApiEndpoint;

    public PokemonScraper(int pokedexId) {
        this.pokedexId = pokedexId;
        mainApiEndpoint = String.format("https://pokeapi.co/api/v2/pokemon/%d", pokedexId);
    }

    public JSONObject scrape() throws Exception{
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
        final Optional<String> primaryAbility = optionalAbilityNameAtIndex(nonHiddenAbilities, 0);
        final Optional<String> secondaryAbility = optionalAbilityNameAtIndex(nonHiddenAbilities, 1);
        final Optional<String> hiddenAbility = optionalAbilityNameAtIndex(hiddenAbilities, 0);

        final String description = getDescription(speciesJSON);

        final JSONObject pokemonRowData = new JSONObject();
        pokemonRowData.put("id", this.pokedexId);
        pokemonRowData.put("name", pokemonName);
        pokemonRowData.put("primary_type", primaryType.orElse(null));
        pokemonRowData.put("secondary_type", secondaryType.orElse(null));
        pokemonRowData.put("primary_egg_group", primaryEggGroup.orElse(null));
        pokemonRowData.put("secondary_egg_group", secondaryEggGroup.orElse(null));
        pokemonRowData.put("image_file_path", imageUrl);
        pokemonRowData.put("primary_ability", primaryAbility.orElse(null));
        pokemonRowData.put("secondary_ability", secondaryAbility.orElse(null));
        pokemonRowData.put("hidden_ability", hiddenAbility.orElse(null));
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

    private Optional<String> optionalAbilityNameAtIndex(List<JSONObject> abilities, int abilityIndex) {
        return abilities.size() > abilityIndex ? Optional.of(getAbilityNameFromIndex(abilities, abilityIndex)) : Optional.empty();
    }

    private String getAbilityNameFromIndex(List<JSONObject> abilities, int abilityIndex) {
        final JSONObject abilitySlot = abilities.get(abilityIndex);
        final JSONObject ability = abilitySlot.getJSONObject("ability");
        return ability.getString("name");
    }

    private String getImageUrl(JSONObject pokemonJSON) {
        final JSONObject spritesJSON = pokemonJSON.getJSONObject("sprites");
        final JSONObject otherSprites = spritesJSON.getJSONObject("other");
        final JSONObject officialArtworkJSON = otherSprites.getJSONObject("official-artwork");
        return officialArtworkJSON.getString("front_default");
    }

    private static List<JSONObject> filterJsonArray(JSONArray jsonArray, Predicate<JSONObject> predicate) {
        List<JSONObject> result = new ArrayList<>();
        for (int i = 0; i < jsonArray.length(); i++) {
            try {
                final JSONObject jsonObject = jsonArray.getJSONObject(i);
                if (predicate.test(jsonObject)) result.add(jsonObject);
            } catch (JSONException ignored) {

            }
        }
        return result;
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

    private JSONObject fetchAPICall(String apiEndpoint) throws IOException {
        final HttpClient httpClient = HttpClients.createDefault();
        final HttpGet getRequest = new HttpGet(apiEndpoint);
        final HttpResponse httpResponse = httpClient.execute(getRequest);
        final HttpEntity httpResponseEntity = httpResponse.getEntity();
        String responseBody = "";
        if (httpResponseEntity != null) {
            try (InputStream inputStream = httpResponseEntity.getContent()) {
                StringWriter writer = new StringWriter();
                IOUtils.copy(inputStream, writer, StandardCharsets.UTF_8);
                responseBody = writer.toString();
            }
        }
        return new JSONObject(responseBody);
    }

}
