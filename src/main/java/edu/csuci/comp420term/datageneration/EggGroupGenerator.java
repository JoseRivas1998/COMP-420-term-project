package edu.csuci.comp420term.datageneration;

import edu.csuci.comp420term.entities.EggGroup;
import edu.csuci.comp420term.entities.JSONEntity;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EggGroupGenerator {

    private static final Map<String, EggGroup> generatedEggGroups = new HashMap<>();
    private final String url;

    public EggGroupGenerator(String url) {
        this.url = url;
    }

    public EggGroup generate() throws IOException {
        if (generatedEggGroups.containsKey(this.url)) {
            return generatedEggGroups.get(this.url);
        }

        final JSONObject eggGroupJSON = JSONApiHelpers.fetchAPICall(this.url);

        final int id = eggGroupJSON.getInt("id");

        final JSONArray namesArray = eggGroupJSON.getJSONArray("names");
        final List<JSONObject> englishNames = JSONEntity.filterJsonArray(namesArray, name -> name.getJSONObject("language").getString("name").equals("en"));
        final String name = englishNames.size() == 1 ? englishNames.get(0).getString("name") : "";

        EggGroup eggGroup = new EggGroup(id, name);
        generatedEggGroups.put(this.url, eggGroup);
        return eggGroup;
    }

}
