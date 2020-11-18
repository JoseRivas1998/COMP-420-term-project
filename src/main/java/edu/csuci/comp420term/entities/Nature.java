package edu.csuci.comp420term.entities;

import org.json.JSONObject;

public class Nature extends JSONEntity{

    public final int id;
    public final String name;

    public Nature(int id, String name) {
        this.id = id;
        this.name = name;
    }

    @Override
    public JSONObject toJSON() {
        JSONObject json = new JSONObject();
        json.put("id", id);
        json.put("name", name);
        return json;
    }

    @Override
    public boolean equals(Object obj) {
        boolean result = obj == this;
        if (!result) {
            if (obj == null || obj.getClass() != this.getClass()) {
                result = false;
            } else {
                Nature other = (Nature) obj;
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
