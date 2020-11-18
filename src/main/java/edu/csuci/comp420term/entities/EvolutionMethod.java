package edu.csuci.comp420term.entities;

import org.json.JSONObject;

import java.util.Objects;

public class EvolutionMethod extends JSONEntity {

    public final int pokemonId;
    public final int evolvesIntoId;
    public final String method;

    public EvolutionMethod(int pokemonId, int evolvesIntoId, String method) {
        this.pokemonId = pokemonId;
        this.evolvesIntoId = evolvesIntoId;
        this.method = method;
    }

    @Override
    public JSONObject toJSON() {
        JSONObject json = new JSONObject();
        json.put("pokemon_id", pokemonId);
        json.put("evolves_into_id", evolvesIntoId);
        json.put("method", method);
        return json;
    }

    @Override
    public boolean equals(Object obj) {
        boolean result = obj == this;
        if (!result) {
            if (obj == null || obj.getClass() != this.getClass()) {
                result = false;
            } else {
                EvolutionMethod other = (EvolutionMethod) obj;
                result = this.pokemonId == other.pokemonId && this.evolvesIntoId == other.evolvesIntoId;
            }
        }
        return result;
    }

    @Override
    public int hashCode() {
        return Objects.hash(this.pokemonId, this.evolvesIntoId);
    }
}
