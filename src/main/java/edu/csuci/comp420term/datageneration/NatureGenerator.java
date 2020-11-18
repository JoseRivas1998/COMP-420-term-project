package edu.csuci.comp420term.datageneration;

import edu.csuci.comp420term.entities.JSONEntity;
import edu.csuci.comp420term.entities.Nature;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class NatureGenerator {

    private static final Map<String, Nature> generatedNatures = new HashMap<>();
    private final String url;

    public NatureGenerator(String url) {
        this.url = url;
    }

    public Nature generate() throws IOException, InterruptedException {
        if (generatedNatures.containsKey(this.url)) {
            return generatedNatures.get(this.url);
        }
        final JSONObject natureJSON = JSONApiHelpers.fetchAPICall(this.url);

        final int id = natureJSON.getInt("id");
        String name = JSONApiHelpers.getEnglishName(natureJSON);
        final Nature nature = new Nature(id, name);
        generatedNatures.put(this.url, nature);
        return nature;
    }



}
