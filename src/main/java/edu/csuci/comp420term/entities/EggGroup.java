package edu.csuci.comp420term.entities;

import org.json.JSONObject;

public class EggGroup extends JSONEntity {

    public final int id;
    public final String name;

    public EggGroup(int id, String name) {
        this.id = id;
        this.name = name;
    }


    @Override
    public JSONObject toJSON() {
        JSONObject json = new JSONObject();
        json.put("id", this.id);
        json.put("name", this.name);
        return json;
    }

    @Override
    public boolean equals(Object obj) {
        boolean result = this == obj;
        if (!result) {
            if (obj == null || obj.getClass() != this.getClass()) {
                result = false;
            } else {
                EggGroup other = (EggGroup) obj;
                return other.id == this.id;
            }
        }
        return result;
    }

    @Override
    public int hashCode() {
        return this.id;
    }
}
