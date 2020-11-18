package edu.csuci.comp420term.entities;

import org.json.JSONObject;

import java.util.List;
import java.util.stream.Collectors;

public class Stat extends JSONEntity {

    public final int id;
    public final String name;
    public final List<Nature> decreasingNatures;
    public final List<Nature> increasingNatures;

    public Stat(int id, String name, List<Nature> decreasingNatures, List<Nature> increasingNatures) {
        this.id = id;
        this.name = name;
        this.decreasingNatures = decreasingNatures.stream().collect(Collectors.toUnmodifiableList());
        this.increasingNatures = increasingNatures.stream().collect(Collectors.toUnmodifiableList());
    }

    @Override
    public JSONObject toJSON() {
        JSONObject json = new JSONObject();
        json.put("id", id);
        json.put("name", name);
        json.put("decreasingNatures", decreasingNatures);
        json.put("increasing_natures", increasingNatures);
        return json;
    }

    @Override
    public boolean equals(Object obj) {
        boolean result = obj == this;
        if (!result) {
            if (obj == null || obj.getClass() != this.getClass()) {
                result = false;
            } else {
                Type other = (Type) obj;
                result = this.id == other.id;
            }
        }
        return result;
    }

    @Override
    public int hashCode() {
        return this.id;
    }
}
