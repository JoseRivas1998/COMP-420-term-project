package edu.csuci.comp420term.entities;

import org.json.JSONObject;

public abstract class JSONEntity {

    public abstract JSONObject toJSON();

    @Override
    public String toString() {
        return toJSON().toString();
    }

    public String toString(int indentFactor) {
        return toJSON().toString();
    }

}
