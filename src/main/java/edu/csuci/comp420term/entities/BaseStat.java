package edu.csuci.comp420term.entities;

import org.json.JSONObject;

import java.util.Objects;

public class BaseStat extends JSONEntity{

    public final int pokemonId;
    public final Stat stat;
    public final int statValue;

    public BaseStat(int pokemonId, Stat stat, int statValue) {
        this.pokemonId = pokemonId;
        this.stat = stat;
        this.statValue = statValue;
    }

    @Override
    public JSONObject toJSON() {
        JSONObject json = new JSONObject();
        json.put("pokemon_id", pokemonId);
        json.put("stat", stat.toJSON());
        json.put("stat_value", statValue);
        return json;
    }

    @Override
    public boolean equals(Object obj) {
        boolean result = obj == this;
        if (!result) {
            if (obj == null || obj.getClass() != this.getClass()) {
                result = false;
            } else {
                BaseStat other = (BaseStat) obj;
                result = this.pokemonId == other.pokemonId && this.stat.equals(other.stat);
            }
        }
        return result;
    }

    @Override
    public int hashCode() {
        return Objects.hash(this.pokemonId, this.stat);
    }

}
