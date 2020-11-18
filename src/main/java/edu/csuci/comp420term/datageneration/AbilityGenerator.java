package edu.csuci.comp420term.datageneration;

import edu.csuci.comp420term.entities.Ability;
import edu.csuci.comp420term.entities.JSONEntity;
import org.apache.commons.text.WordUtils;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AbilityGenerator {

    private static final Map<String, Ability> loadedAbilities = new HashMap<>();

    private final String url;

    public AbilityGenerator(String url) {
        this.url = url;
    }

    public Ability generate() {
        if (loadedAbilities.containsKey(this.url)) {
            return loadedAbilities.get(this.url);
        }
        Ability ability;
        try {
            final JSONObject abilityJSON = JSONApiHelpers.fetchAPICall(this.url);
            final int abilityId = abilityJSON.getInt("id");
            final String name = WordUtils.capitalizeFully(abilityJSON.getString("name"));

            final JSONArray effectEntries = abilityJSON.getJSONArray("effect_entries");
            final Predicate<JSONObject> jsonObjectPredicate = jsonObject -> jsonObject.getJSONObject("language").getString("name").equals("en");
            final List<JSONObject> englishEffectEntries = JSONEntity.filterJsonArray(effectEntries, jsonObjectPredicate);
            final String effect = englishEffectEntries.size() == 1 ? englishEffectEntries.get(0).getString("effect") : "";

            ability = new Ability(abilityId, name, effect.replace('\n', ' ').replaceAll("\f", " "));
        } catch (Exception exception) {
            ability = getMissingAbility();
        }
        loadedAbilities.put(this.url, ability);
        return ability;
    }

    private Ability getMissingAbility() {
        final String urlWithoutLastSlash = this.url.substring(0, this.url.length() - 1);
        final int indexAfterSecondToLastSlash = urlWithoutLastSlash.lastIndexOf('/') + 1;
        final int abilityId = Integer.parseInt(urlWithoutLastSlash.substring(indexAfterSecondToLastSlash));
        return missingAbilities().get(abilityId);
    }

    private static Map<Integer, Ability> missingAbilities() {
        Map<Integer, Ability> missingAbilities = new HashMap<>();
        missingAbilities.put(93, new Ability(93, "Hydration", "At the end of each turn, if it is raining, Hydration will cure the Pokémon of any non-volatile status condition. If it cures a status condition, it does so before burn or poison damage is dealt on that turn. Pokémon who are made drowsy by Yawn will not fall asleep until after Hydration takes effect, and as such, will not be healed until the end of the next turn."));
        return missingAbilities;
    }

}
