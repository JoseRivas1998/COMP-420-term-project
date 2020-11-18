package edu.csuci.comp420term.datageneration;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.FileWriter;
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;

public class TypeEffectivenessGenerator {

    public static String generateTypeEffectivenessInsertSQL()throws IOException {
        final Map<String, Integer> typeNameToId = generateTypeMask();
        final String[] insertValues = typeNameToId.values()
                .stream()
                .sorted(Integer::compareTo)
                .map(attackTypeId -> stringGenerateInsertStringForAttackType(typeNameToId, attackTypeId))
                .flatMap(List::stream)
                .toArray(String[]::new);
        return "INSERT INTO TYPE_EFFECTIVENESS(ATTACK_TYPE_ID, DEFEND_TYPE_ID, EFFECTIVENESS_MULTIPLIER)\r\n" +
                "VALUES " + String.join(",\r\n       ", insertValues) + ";\r\n";
    }

    private static List<String> stringGenerateInsertStringForAttackType(Map<String, Integer> typeNameToId, int attackTypeId) {
        final String url = String.format("https://pokeapi.co/api/v2/type/%d/", attackTypeId);
        try {
            final JSONObject type = JSONApiHelpers.fetchAPICall(url);
            final JSONObject damageRelations = type.getJSONObject("damage_relations");
            final List<String> result = new ArrayList<>();
            addDamageRelationToResultList(typeNameToId, attackTypeId, damageRelations, result,
                    "double_damage_to", 2);
            addDamageRelationToResultList(typeNameToId, attackTypeId, damageRelations, result,
                    "half_damage_to", 0.5);
            addDamageRelationToResultList(typeNameToId, attackTypeId, damageRelations, result,
                    "no_damage_to", 0);
            return result;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return new ArrayList<>();
    }

    private static void addDamageRelationToResultList(Map<String, Integer> typeNameToId, int attackTypeId, JSONObject damageRelations, List<String> result, String damageRelationListName, double damageRelationValue) {
        final JSONArray damageRelation = damageRelations.getJSONArray(damageRelationListName);
        for (int i = 0; i < damageRelation.length(); i++) {
            final JSONObject defendType = damageRelation.getJSONObject(i);
            final String defendTypeName = defendType.getString("name");
            final int defendTypeId = typeNameToId.get(defendTypeName);
            result.add(String.format("(%d, %d, %f)", attackTypeId, defendTypeId, damageRelationValue));
        }
    }

    private static Map<String, Integer> generateTypeMask() {
        final Map<String, Integer> typeNameToId = new HashMap<>();
        typeNameToId.put("normal", 1);
        typeNameToId.put("fighting", 2);
        typeNameToId.put("flying", 3);
        typeNameToId.put("poison", 4);
        typeNameToId.put("ground", 5);
        typeNameToId.put("rock", 6);
        typeNameToId.put("bug", 7);
        typeNameToId.put("ghost", 8);
        typeNameToId.put("steel", 9);
        typeNameToId.put("fire", 10);
        typeNameToId.put("water", 11);
        typeNameToId.put("grass", 12);
        typeNameToId.put("electric", 13);
        typeNameToId.put("psychic", 14);
        typeNameToId.put("ice", 15);
        typeNameToId.put("dragon", 16);
        typeNameToId.put("dark", 17);
        typeNameToId.put("fairy", 18);
        return typeNameToId;
    }

}
