package edu.csuci.comp420term.entities;

import org.json.JSONObject;

import java.util.Comparator;
import java.util.Optional;

public class Pokemon extends JSONEntity implements Comparable<Pokemon> {

    public final int id;

    public final Type primaryType;
    private final Type secondaryType;

    public final EggGroup primaryEggGroup;
    private final EggGroup secondaryEggGroup;

    public final Ability primaryAbility;
    private final Ability secondaryAbility;
    private final Ability hiddenAbility;

    public final String name;
    public final String description;
    public final String imageFilePath;

    public Pokemon(int id, Type primaryType, Type secondaryType, EggGroup primaryEggGroup, EggGroup secondaryEggGroup, Ability primaryAbility, Ability secondaryAbility, Ability hiddenAbility, String name, String description, String imageFilePath) {
        this.id = id;
        this.primaryType = primaryType;
        this.secondaryType = secondaryType;
        this.primaryEggGroup = primaryEggGroup;
        this.secondaryEggGroup = secondaryEggGroup;
        this.primaryAbility = primaryAbility;
        this.secondaryAbility = secondaryAbility;
        this.hiddenAbility = hiddenAbility;
        this.name = name;
        this.description = description;
        this.imageFilePath = imageFilePath;
    }

    public Optional<Type> getSecondaryType() {
        return Optional.ofNullable(this.secondaryType);
    }

    public Optional<EggGroup> getSecondaryEggGroup() {
        return Optional.ofNullable(this.secondaryEggGroup);
    }

    public Optional<Ability> getSecondaryAbility() {
        return Optional.ofNullable(this.secondaryAbility);
    }

    public Optional<Ability> getHiddenAbility() {
        return Optional.ofNullable(this.hiddenAbility);
    }

    @Override
    public int compareTo(Pokemon o) {
        return Integer.compare(this.id, o.id);
    }

    @Override
    public JSONObject toJSON() {
        JSONObject json = new JSONObject();
        json.put("id", id);

        json.put("primary_type", this.primaryType.toJSON());
        getSecondaryType().ifPresent(type -> json.put("secondary_type", type.toJSON()));

        json.put("primary_egg_group", this.primaryEggGroup.toJSON());
        getSecondaryEggGroup().ifPresent(eggGroup -> json.put("secondary_egg_group", eggGroup.toJSON()));

        json.put("primary_ability", this.primaryAbility.toJSON());
        getSecondaryAbility().ifPresent(ability -> json.put("secondary_ability", ability.toJSON()));
        getHiddenAbility().ifPresent(ability -> json.put("hidden_ability", ability.toJSON()));

        json.put("name", this.name);
        json.put("description", this.description);
        json.put("image_file_path", this.imageFilePath);

        return json;
    }
}
