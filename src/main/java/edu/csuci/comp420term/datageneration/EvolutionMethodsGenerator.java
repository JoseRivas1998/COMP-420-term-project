package edu.csuci.comp420term.datageneration;

import edu.csuci.comp420term.entities.EvolutionMethod;
import edu.csuci.comp420term.entities.Type;
import org.apache.commons.text.WordUtils;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class EvolutionMethodsGenerator {

    private static final Set<String> alreadyProcessedUrls = new HashSet<>();
    private static final Set<EvolutionMethod> evolutionMethods = new HashSet<>();

    private final String url;

    public EvolutionMethodsGenerator(String url) {
        this.url = url;
    }

    public void generate() throws IOException, InterruptedException {
        if (alreadyProcessedUrls.contains(this.url)) return;
        alreadyProcessedUrls.add(this.url);

        final JSONObject evolutionChain = JSONApiHelpers.fetchAPICall(this.url);
        addChain(evolutionChain.getJSONObject("chain"), -1);
    }

    private void addChain(final JSONObject chain, final int evolvesFrom) {
        final int speciesId = getSpeciesId(chain);
        if(evolvesFrom > 0 && chain.getJSONArray("evolution_details").length() > 0) {
            final JSONObject evolutionDetails = chain.getJSONArray("evolution_details").getJSONObject(0);
//            System.out.println(evolutionDetails.toString(4));
            String method = generateEvolutionMethodDescription(evolutionDetails);
            final EvolutionMethod evolutionMethod = new EvolutionMethod(evolvesFrom, speciesId, method);
            evolutionMethods.add(evolutionMethod);
        }
        final JSONArray evolvesTo = chain.getJSONArray("evolves_to");
        for (int i = 0; i < evolvesTo.length(); i++) {
            addChain(evolvesTo.getJSONObject(i), speciesId);
        }
    }

    private static final Set<String> knownTriggers = new HashSet<>();

    private String generateEvolutionMethodDescription(JSONObject evolutionDetails) {
        final String trigger = evolutionDetails.getJSONObject("trigger").getString("name");
        String method;
        switch (trigger) {
            case "shed":
                method = "Appears in party if there is extra space in players party and an extra Poké Ball in the player's bag when evolving Nincada.";
                break;
            case "use-item":
                method = useItemMethod(evolutionDetails);
                break;
            case "trade":
                Optional<String> whileHoldingItem = getWhileHolding(evolutionDetails);
                method = String.format("Trade%s", whileHoldingItem.orElse(""));
                break;
            case "level-up":
                method = levelUpMethod(evolutionDetails);
                break;
            default:
                method = "PLACEHOLDER";
        }
        return method;
    }

    private String levelUpMethod(JSONObject evolutionDetails) {
        final String[] methods = Stream.of(Optional.of("Level up"),
                getToAtLeastLevel(evolutionDetails),
                getWhileHolding(evolutionDetails),
                getWhileKnowingMove(evolutionDetails),
                getWhileKnowingMoveType(evolutionDetails),
                getWhileAtLocation(evolutionDetails),
                getWhileItIsRaining(evolutionDetails),
                getWhileDuringTheDay(evolutionDetails),
                getWhileHoldingGameSystemUpsideDown(evolutionDetails),
                getWithMinAffection(evolutionDetails),
                getWithMinBeauty(evolutionDetails),
                getWithMinHappiness(evolutionDetails),
                getWithPokemonInParty(evolutionDetails),
                getWithTypeInParty(evolutionDetails),
                getWithRelativeAttackAndDefense(evolutionDetails),
                getIsGender(evolutionDetails))
                .filter(Optional::isPresent)
                .map(Optional::get)
                .toArray(String[]::new);

        return String.join("", methods);
    }

    private Optional<String> getToAtLeastLevel(JSONObject evolutionDetails) {
        Optional<String> toAtLeastLevel = Optional.empty();
        if (hasObject(evolutionDetails, "min_level")) {
            final int minLevel = evolutionDetails.getInt("min_level");
            toAtLeastLevel = Optional.of(String.format(" to at least level %d", minLevel));
        }
        return toAtLeastLevel;
    }

    private Optional<String> getWhileHoldingGameSystemUpsideDown(JSONObject evolutionDetails) {
        Optional<String> whileHoldingGameSystemUpsideDown = Optional.empty();
        if (hasObject(evolutionDetails, "turn_upside_down")) {
            final boolean upsideDown = evolutionDetails.getBoolean("turn_upside_down");
            if (upsideDown) {
                whileHoldingGameSystemUpsideDown = Optional.of(" while holding the game system upside down");
            }
        }
        return whileHoldingGameSystemUpsideDown;
    }

    private Optional<String> getWhileDuringTheDay(JSONObject evolutionDetails) {
        Optional<String> whileTimeOfDay = Optional.empty();
        if (hasObject(evolutionDetails, "time_of_day")) {
            final String timeOfDay = evolutionDetails.getString("time_of_day");
            if (!timeOfDay.isBlank()) {
                whileTimeOfDay = Optional.of(String.format(" while during the %s", timeOfDay));
            }
        }
        return whileTimeOfDay;
    }

    private Optional<String> getWithRelativeAttackAndDefense(JSONObject evolutionDetails) {
        Optional<String> withRelativeAttackAndDefense = Optional.empty();
        if (hasObject(evolutionDetails, "relative_physical_stats")) {
            final int relativeStat = evolutionDetails.getInt("relative_physical_stats");
            char symbol;
            if (relativeStat > 0) {
                symbol = '>';
            } else if (relativeStat < 0) {
                symbol = '<';
            } else {
                symbol = '=';
            }
            withRelativeAttackAndDefense = Optional.of(String.format(" with attack %s defense", symbol));
        }
        return withRelativeAttackAndDefense;
    }

    private Optional<String> getWithTypeInParty(JSONObject evolutionDetails) {
        Optional<String> withTypeInParty = Optional.empty();
        if (hasObject(evolutionDetails, "party_type")) {
            final JSONObject partyType = evolutionDetails.getJSONObject("party_type");
            final Type type = PokemonGenerator.TYPE_TABLE.get(partyType.getString("name"));
            withTypeInParty = Optional.of(String.format(" with a %s type in player's party", type.name));
        }
        return withTypeInParty;
    }

    private Optional<String> getWithPokemonInParty(JSONObject evolutionDetails) {
        Optional<String> withPokemonInParty = Optional.empty();
        if (hasObject(evolutionDetails, "party_species")) {
            final String speciesName = getCapitalizedName(evolutionDetails.getJSONObject("party_species"));
            withPokemonInParty = Optional.of(String.format(" with a %s in player's party", speciesName));
        }
        return withPokemonInParty;
    }

    private Optional<String> getWhileItIsRaining(JSONObject evolutionDetails) {
        Optional<String> whileRaining = Optional.empty();
        if (hasObject(evolutionDetails, "needs_overworld_rain")) {
            final boolean needsRain = evolutionDetails.getBoolean("needs_overworld_rain");
            if (needsRain) {
                whileRaining = Optional.of(" while it is raining");
            }
        }
        return whileRaining;
    }

    private Optional<String> getWithMinHappiness(JSONObject evolutionDetails) {
        Optional<String> withMinHappiness = Optional.empty();
        if (hasObject(evolutionDetails, "min_happiness")) {
            final int minHappiness = evolutionDetails.getInt("min_happiness");
            withMinHappiness = Optional.of(String.format(" with happiness of at least %d", minHappiness));
        }
        return withMinHappiness;
    }

    private Optional<String> getWithMinBeauty(JSONObject evolutionDetails) {
        Optional<String> withMinBeauty = Optional.empty();
        if (hasObject(evolutionDetails, "min_beauty")) {
            final int minBeauty = evolutionDetails.getInt("min_beauty");
            withMinBeauty = Optional.of(String.format(" with a beauty of at least %d", minBeauty));
        }
        return withMinBeauty;
    }

    private Optional<String> getWithMinAffection(JSONObject evolutionDetails) {
        Optional<String> withMinAffection = Optional.empty();
        if (hasObject(evolutionDetails, "min_affection")) {
            final int minAffection = evolutionDetails.getInt("min_affection");
            withMinAffection = Optional.of(String.format(" with a minimum affection of %d", minAffection));
        }
        return withMinAffection;
    }

    private Optional<String> getWhileAtLocation(JSONObject evolutionDetails) {
        Optional<String> whileAtLocation = Optional.empty();
        if (hasObject(evolutionDetails, "location")) {
            String locationName = getCapitalizedName(evolutionDetails.getJSONObject("location"));
            whileAtLocation = Optional.of(String.format(" while at %s", locationName));
        }
        return whileAtLocation;
    }

    private Optional<String> getWhileKnowingMoveType(JSONObject evolutionDetails) {
        Optional<String> whileKnowingMoveOfType = Optional.empty();
        if (hasObject(evolutionDetails, "known_move_type")) {
            final JSONObject knownMoveType = evolutionDetails.getJSONObject("known_move_type");
            final Type type = PokemonGenerator.TYPE_TABLE.get(knownMoveType.getString("name"));
            whileKnowingMoveOfType = Optional.of(String.format(" while knowing a %s type move", type.name));
        }
        return whileKnowingMoveOfType;
    }

    private Optional<String> getWhileKnowingMove(JSONObject evolutionDetails) {
        Optional<String> whileKnowingMove = Optional.empty();
        if (hasObject(evolutionDetails, "known_move")) {
            String moveName = getCapitalizedName(evolutionDetails.getJSONObject("known_move"));
            whileKnowingMove = Optional.of(String.format(" while knowing %s", moveName));
        }
        return whileKnowingMove;
    }

    private Optional<String> getIsGender(JSONObject evolutionDetails) {
        Optional<String> isGender = Optional.empty();
        if (hasObject(evolutionDetails, "gender")) {
            String gender = evolutionDetails.getInt("gender") == 1 ? "Female" : "Male";
            isGender = Optional.of(String.format(", and is %s", gender));
        }
        return isGender;
    }

    private Optional<String> getWhileHolding(JSONObject evolutionDetails) {
        Optional<String> whileHoldingItem;
        if (hasObject(evolutionDetails, "held_item")) {
            final JSONObject heldItem = evolutionDetails.getJSONObject("held_item");
            final String itemName = getCapitalizedName(heldItem);
            whileHoldingItem = Optional.of(String.format(" while holding %s", itemName));
        } else {
            whileHoldingItem = Optional.empty();
        }
        return whileHoldingItem;
    }

    private boolean hasObject(JSONObject evolutionDetails, String objectName) {
        return !evolutionDetails.get(objectName).equals(JSONObject.NULL);
    }

    private String useItemMethod(JSONObject evolutionDetails) {
        final JSONObject item = evolutionDetails.getJSONObject("item");
        return getCapitalizedName(item);
    }

    private String getCapitalizedName(JSONObject item) {
        final String itemNameLowercaseDashed = item.getString("name");
        return WordUtils.capitalizeFully(itemNameLowercaseDashed.replace('-', ' '));
    }

    private int getSpeciesId(JSONObject chain) {
        final String speciesURL = chain.getJSONObject("species").getString("url");
        final String withoutSlash = speciesURL.substring(0, speciesURL.length() - 1);
        final int lastSlashIndex = withoutSlash.lastIndexOf('/');
        final int speciesId = Integer.parseInt(withoutSlash.substring(lastSlashIndex + 1));
        return speciesId;
    }

    public static List<EvolutionMethod> evolutionMethods() {
        return evolutionMethods.stream().collect(Collectors.toUnmodifiableList());
    }

}
