package edu.csuci.comp420term.entities;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

public abstract class JSONEntity {

    public abstract JSONObject toJSON();

    @Override
    public String toString() {
        return toJSON().toString();
    }

    public String toString(int indentFactor) {
        return toJSON().toString();
    }

    public static List<JSONObject> filterJsonArray(JSONArray jsonArray, Predicate<JSONObject> predicate) {
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

}
