package edu.csuci.comp420term.entities;

import org.json.JSONObject;

import java.util.Objects;

public class AlternateForm extends JSONEntity{

    public final int id;
    public final int pokemonId;
    public final String name;
    public final String imageUrl;

    public AlternateForm(int id, int pokemonId, String name, String imageUrl) {
        this.id = id;
        this.pokemonId = pokemonId;
        this.name = name;
        this.imageUrl = imageUrl;
    }

    @Override
    public JSONObject toJSON() {
        JSONObject json = new JSONObject();
        json.put("id", id);
        json.put("pokemon_id", pokemonId);
        json.put("name", name);
        json.put("image_url", imageUrl);
        return json;
    }

    @Override
    public boolean equals(Object obj) {
        boolean result = obj == this;
        if (!result) {
            if (obj == null || obj.getClass() != this.getClass()) {
                result = false;
            } else {
                AlternateForm other = (AlternateForm) obj;
                result = this.id == other.id && this.pokemonId == other.pokemonId;
            }
        }
        return result;
    }

    @Override
    public int hashCode() {
        return Objects.hash(this.id, this.pokemonId);
    }

}
