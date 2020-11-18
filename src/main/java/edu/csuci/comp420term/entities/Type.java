package edu.csuci.comp420term.entities;

import org.json.JSONObject;

public class Type extends JSONEntity{

    public final int id;
    public final String name;
    public final String colorHex;

    public Type(int id, String name, String colorHex) {
        this.id = id;
        this.name = name;
        this.colorHex = colorHex;
    }

    @Override
    public JSONObject toJSON() {
        JSONObject json = new JSONObject();
        json.put("id", id);
        json.put("name", name);
        json.put("color_hex", colorHex);
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
