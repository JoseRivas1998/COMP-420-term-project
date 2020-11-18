package edu.csuci.comp420term.datageneration;

import edu.csuci.comp420term.entities.JSONEntity;
import edu.csuci.comp420term.entities.Nature;
import edu.csuci.comp420term.entities.Stat;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class StatGenerator {

    private final String url;
    private static final Map<String, Stat> generatedStats = new HashMap<>();

    public StatGenerator(String url) {
        this.url = url;
    }

    public Stat generate() throws IOException, InterruptedException {
        if (generatedStats.containsKey(this.url)) {
            return generatedStats.get(this.url);
        }
        final JSONObject statObject = JSONApiHelpers.fetchAPICall(this.url);
        final int id = statObject.getInt("id");

        String name = JSONApiHelpers.getEnglishName(statObject);

        final JSONObject affectingNatures = statObject.getJSONObject("affecting_natures");
        List<Nature> decrease = buildNatureList(affectingNatures, "decrease");
        List<Nature> increase = buildNatureList(affectingNatures, "increase");

        Stat stat = new Stat(id, name, decrease, increase);
        generatedStats.put(this.url, stat);
        return stat;
    }


    private List<Nature> buildNatureList(JSONObject affectingNatures, String natureListName) throws IOException, InterruptedException {
        List<Nature> natures = new ArrayList<>();
        JSONArray natureArray = affectingNatures.getJSONArray(natureListName);
        for (int i = 0; i < natureArray.length(); i++) {
            JSONObject natureObject = natureArray.getJSONObject(i);
            final String natureUrl = natureObject.getString("url");
            NatureGenerator natureGenerator = new NatureGenerator(natureUrl);
            Nature nature = natureGenerator.generate();
            natures.add(nature);
        }
        return natures;
    }
}
