package edu.csuci.comp420term.entities;

import org.json.JSONObject;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

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

    public final List<BaseStat> baseStats;

    public final List<AlternateForm> alternateForms;

    public final List<EvolutionMethod> evolutionMethods;

    public Pokemon(int id, Type primaryType, Type secondaryType, EggGroup primaryEggGroup, EggGroup secondaryEggGroup, Ability primaryAbility, Ability secondaryAbility, Ability hiddenAbility, String name, String description, String imageFilePath, List<BaseStat> baseStats, List<AlternateForm> alternateForms, List<EvolutionMethod> evolutionMethods) {
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
        this.baseStats = baseStats.stream().collect(Collectors.toUnmodifiableList());
        this.alternateForms = alternateForms.stream().collect(Collectors.toUnmodifiableList());
        this.evolutionMethods = evolutionMethods.stream().collect(Collectors.toUnmodifiableList());
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

        json.put("base_stats", JSONEntity.mapCollectionToJSONArray(this.baseStats));

        json.put("alternate_forms", JSONEntity.mapCollectionToJSONArray(this.alternateForms));

        json.put("evolution_methods", JSONEntity.mapCollectionToJSONArray(this.evolutionMethods));

        return json;
    }

    @Override
    public boolean equals(Object obj) {
        boolean result = obj == this;
        if (!result) {
            if (obj == null || obj.getClass() != this.getClass()) {
                result = false;
            } else {
                Pokemon other = (Pokemon) obj;
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
