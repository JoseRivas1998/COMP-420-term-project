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

    public EggGroup generate() throws IOException, InterruptedException {
        if (generatedEggGroups.containsKey(this.url)) {
            return generatedEggGroups.get(this.url);
        }

        final JSONObject eggGroupJSON = JSONApiHelpers.fetchAPICall(this.url);

        final int id = eggGroupJSON.getInt("id");

        final String name = JSONApiHelpers.getEnglishName(eggGroupJSON);

        EggGroup eggGroup = new EggGroup(id, name);
        generatedEggGroups.put(this.url, eggGroup);
        return eggGroup;
    }

}
