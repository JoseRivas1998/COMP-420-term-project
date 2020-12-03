package edu.csuci.comp420term.entities;

import org.json.JSONObject;

import java.util.Objects;

public class AttackTypeMultiplier extends JSONEntity {

    public final Type attack;
    public final double multiplier;

    public AttackTypeMultiplier(Type attack, double multiplier) {
        Objects.requireNonNull(attack);
        this.attack = attack;
        this.multiplier = multiplier;
    }

    @Override
    public JSONObject toJSON() {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("attack", attack.toJSON());
        jsonObject.put("multiplier", multiplier);
        return jsonObject;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AttackTypeMultiplier that = (AttackTypeMultiplier) o;
        return Double.compare(that.multiplier, multiplier) == 0
                && Objects.equals(attack, that.attack);
    }

    @Override
    public int hashCode() {
        return Objects.hash(attack, multiplier);
    }
}
