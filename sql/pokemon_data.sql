USE pokemondb;

DELETE
FROM BASE_STAT
WHERE TRUE;

DELETE
FROM ALTERNATE_FORM
WHERE TRUE;

DELETE
FROM POKEMON
WHERE TRUE;

DELETE
FROM TYPE_EFFECTIVENESS
WHERE TRUE;

DELETE
FROM TYPE
WHERE TRUE;

DELETE
FROM EGG_GROUP
WHERE TRUE;

DELETE
FROM ABILITY
WHERE TRUE;

DELETE
FROM NATURE_STAT
WHERE TRUE;

DELETE
FROM NATURE
WHERE TRUE;

DELETE
FROM STAT
WHERE TRUE;

INSERT INTO EGG_GROUP(EGG_GROUP_ID, EGG_GROUP_NAME) VALUE (1, 'Monster');
INSERT INTO EGG_GROUP(EGG_GROUP_ID, EGG_GROUP_NAME) VALUE (2, 'Water 1');
INSERT INTO EGG_GROUP(EGG_GROUP_ID, EGG_GROUP_NAME) VALUE (3, 'Bug');
INSERT INTO EGG_GROUP(EGG_GROUP_ID, EGG_GROUP_NAME) VALUE (4, 'Flying');
INSERT INTO EGG_GROUP(EGG_GROUP_ID, EGG_GROUP_NAME) VALUE (5, 'Field');
INSERT INTO EGG_GROUP(EGG_GROUP_ID, EGG_GROUP_NAME) VALUE (6, 'Fairy');
INSERT INTO EGG_GROUP(EGG_GROUP_ID, EGG_GROUP_NAME) VALUE (7, 'Grass');
INSERT INTO EGG_GROUP(EGG_GROUP_ID, EGG_GROUP_NAME) VALUE (8, 'Human-Like');
INSERT INTO EGG_GROUP(EGG_GROUP_ID, EGG_GROUP_NAME) VALUE (9, 'Water 3');
INSERT INTO EGG_GROUP(EGG_GROUP_ID, EGG_GROUP_NAME) VALUE (10, 'Mineral');
INSERT INTO EGG_GROUP(EGG_GROUP_ID, EGG_GROUP_NAME) VALUE (11, 'Amorphous');
INSERT INTO EGG_GROUP(EGG_GROUP_ID, EGG_GROUP_NAME) VALUE (12, 'Water 2');
INSERT INTO EGG_GROUP(EGG_GROUP_ID, EGG_GROUP_NAME) VALUE (13, 'Ditto');
INSERT INTO EGG_GROUP(EGG_GROUP_ID, EGG_GROUP_NAME) VALUE (14, 'Dragon');
INSERT INTO EGG_GROUP(EGG_GROUP_ID, EGG_GROUP_NAME) VALUE (15, 'Undiscovered');

INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (1, 'Stench', 'This Pokémon\'s damaging moves have a 10% chance to make the target flinch with each hit if they do not already cause flinching as a secondary effect.  This ability does not stack with a held item.  Overworld: The wild encounter rate is halved while this Pokémon is first in the party.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (2, 'Drizzle', 'The weather changes to rain when this Pokémon enters battle and does not end unless replaced by another weather condition.  If multiple Pokémon with this ability, drought, sand stream, or snow warning are sent out at the same time, the abilities will activate in order of Speed, respecting trick room.  Each ability\'s weather will cancel the previous weather, and only the weather summoned by the slowest of the Pokémon will stay.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (3, 'Speed-boost', 'This Pokémon\'s Speed rises one stage after each turn.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (4, 'Battle-armor', 'Moves cannot score critical hits against this Pokémon.  This ability functions identically to shell armor.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (5, 'Sturdy', 'When this Pokémon is at full HP, any hit that would knock it out will instead leave it with 1 HP.  Regardless of its current HP, it is also immune to the one-hit KO moves: fissure, guillotine, horn drill, and sheer cold.  If this Pokémon is holding a focus sash, this ability takes precedence and the item will not be consumed.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (6, 'Damp', 'While this Pokémon is in battle, self destruct and explosion will fail and aftermath will not take effect.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (7, 'Limber', 'This Pokémon cannot be paralyzed.  If a Pokémon is paralyzed and acquires this ability, its paralysis is healed; this includes when regaining a lost ability upon leaving battle.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (8, 'Sand-veil', 'During a sandstorm, this Pokémon has 1.25× its evasion, and it does not take sandstorm damage regardless of type.  The evasion bonus does not count as a stat modifier.  Overworld: If the lead Pokémon has this ability, the wild encounter rate is halved in a sandstorm.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (9, 'Static', 'Whenever a move makes contact with this Pokémon, the move\'s user has a 30% chance of being paralyzed.  Pokémon that are immune to electric-type moves can still be paralyzed by this ability.  Overworld: If the lead Pokémon has this ability, there is a 50% chance that encounters will be with an electric Pokémon, if applicable.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (10, 'Volt-absorb', 'Whenever an electric-type move hits this Pokémon, it heals for 1/4 of its maximum HP, negating any other effect on it.  This ability will not take effect if this Pokémon is ground-type and thus immune to Electric moves.  Electric moves will ignore this Pokémon\'s substitute.  This effect includes non-damaging moves, i.e. thunder wave.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (11, 'Water-absorb', 'Whenever a water-type move hits this Pokémon, it heals for 1/4 of its maximum HP, negating any other effect on it.  Water moves will ignore this Pokémon\'s substitute.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (12, 'Oblivious', 'This Pokémon cannot be infatuated and is immune to captivate.  If a Pokémon is infatuated and acquires this ability, its infatuation is cleared.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (13, 'Cloud-nine', 'While this Pokémon is in battle, weather can still be in play, but will not have any of its effects.  This ability functions identically to air lock.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (14, 'Compound-eyes', 'This Pokémon\'s moves have 1.3× their accuracy.  This ability has no effect on the one-hit KO moves (fissure, guillotine, horn drill, and sheer cold).  Overworld: If the first Pokémon in the party has this ability, the chance of a wild Pokémon holding a particular item is raised from 50%, 5%, or 1% to 60%, 20%, or 5%, respectively.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (15, 'Insomnia', 'This Pokémon cannot be asleep.  This causes rest to fail altogether.  If a Pokémon is asleep and acquires this ability, it will immediately wake up; this includes when regaining a lost ability upon leaving battle.  This ability functions identically to vital spirit in battle.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (16, 'Color-change', 'Whenever this Pokémon takes damage from a move, the Pokémon\'s type changes to match the move.  If the Pokémon has two types, both are overridden.  The Pokémon must directly take damage; for example, moves blocked by a substitute will not trigger this ability, nor will moves that deal damage indirectly, such as spikes.  This ability takes effect on only the last hit of a multiple-hit attack.  In Pokémon Colosseum and XD: Gale of Darkness, this ability does not take effect on Shadow-type moves.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (17, 'Immunity', 'This Pokémon cannot be poisoned.  This includes bad poison.  If a Pokémon is poisoned and acquires this ability, its poison is healed; this includes when regaining a lost ability upon leaving battle.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (18, 'Flash-fire', 'This Pokémon is immune to fire-type moves.  Once this Pokémon has been hit by a Fire move, its own Fire moves will inflict 1.5× as much damage until it leaves battle.  This ability has no effect while the Pokémon is frozen.  The Fire damage bonus is retained even if the Pokémon is frozen and thawed or the ability is lost or disabled.  Fire moves will ignore this Pokémon\'s substitute.  This ability takes effect even on non-damaging moves, i.e. will o wisp.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (19, 'Shield-dust', 'This Pokémon is immune to the extra effects of moves used against it.  An extra effect is a move\'s chance, listed as an "effect chance", to inflict a status ailment, cause a stat change, or make the target flinch in addition to the move\'s main effect.  For example, thunder shock\'s paralysis is an extra effect, but thunder wave\'s is not, nor are knock off\'s item removal and air cutter\'s increased critical hit rate.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (20, 'Own-tempo', 'This Pokémon cannot be confused.  If a Pokémon is confused and acquires this ability, its confusion will immediately be healed.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (21, 'Suction-cups', 'This Pokémon cannot be forced out of battle by moves such as whirlwind.  dragon tail and circle throw still inflict damage against this Pokémon.  Overworld: If the lead Pokémon has this ability, the success rate while fishing is increased.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (22, 'Intimidate', 'When this Pokémon enters battle, the opponent\'s Attack is lowered by one stage.  In a double battle, both opponents are affected.  This ability also takes effect when acquired during a battle, but will not take effect again if lost and reobtained without leaving battle.  This ability has no effect on an opponent that has a substitute.  Overworld: If the first Pokémon in the party has this ability, any random encounter with a Pokémon five or more levels lower than it has a 50% chance of being skipped.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (23, 'Shadow-tag', 'While this Pokémon is in battle, opposing Pokémon cannot flee or switch out.  Other Pokémon with this ability are unaffected.  Pokémon with run away can still flee.  Pokémon can still switch out with the use of a move or item.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (24, 'Rough-skin', 'Whenever a move makes contact with this Pokémon, the move\'s user takes 1/8 of its maximum HP in damage.  This ability functions identically to iron barbs.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (25, 'Wonder-guard', 'This Pokémon is immune to damaging moves that are not super effective against it.  Moves that inflict fixed damage, such as night shade or seismic toss, are considered super effective if their types are.  Damage not directly dealt by moves, such as damage from weather, a status ailment, or spikes, is not prevented.  This ability cannot be copied with role play or traded away with skill swap, but it can be copied with trace, disabled with gastro acid, or changed with worry seed.  This Pokémon can still use Role Play itself to lose this ability, but not Skill Swap.  If this Pokémon has a substitute, this ability will block moves as usual and any moves not blocked will react to the Substitute as usual.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (26, 'Levitate', 'This Pokémon is immune to ground-type moves, spikes, toxic spikes, and arena trap.  This ability is disabled during gravity or ingrain, or while holding an iron ball.  This ability is not disabled during roost.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (27, 'Effect-spore', 'Whenever a move makes contact with this Pokémon, the move\'s user has a 30% chance of being paralyzed, poisoned, or put to sleep, chosen at random.  Nothing is done to compensate if the move\'s user is immune to one of these ailments; there is simply a lower chance that the move\'s user will be affected.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (28, 'Synchronize', 'Whenever this Pokémon is burned, paralyzed, or poisoned, the Pokémon who gave this Pokémon that ailment is also given the ailment.  This ability passes back bad poison when this Pokémon is badly poisoned.  This ability cannot pass on a status ailment that the Pokémon did not directly receive from another Pokémon, such as the poison from toxic spikes or the burn from a flame orb.  Overworld: If the lead Pokémon has this ability, wild Pokémon have a 50% chance of having the lead Pokémon\'s nature, and a 50% chance of being given a random nature as usual, including the lead Pokémon\'s nature.  This does not work on Pokémon received outside of battle or roaming legendaries.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (29, 'Clear-body', 'This Pokémon cannot have its stats lowered by other Pokémon.  This ability does not prevent any stat losses other than stat modifiers, such as the Speed cut from paralysis.  This Pokémon can still be passed negative stat modifiers through guard swap, heart swap, or power swap.  This ability functions identically to white smoke in battle.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (30, 'Natural-cure', 'This Pokémon is cured of any major status ailment when it is switched out for another Pokémon.  If this ability is acquired during battle, the Pokémon is cured upon leaving battle before losing the temporary ability.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (31, 'Lightning-rod', 'All other Pokémon\'s single-target electric-type moves are redirected to this Pokémon if it is an eligible target.  Other Pokémon\'s Electric moves raise this Pokémon\'s Special Attack one stage, negating any other effect on it, and cannot miss it.  If the move\'s intended target also has this ability, the move is not redirected.  When multiple Pokémon with this ability are possible targets for redirection, the move is redirected to the one with the highest Speed stat, or, in the case of a tie, to a random tied Pokémon.  follow me takes precedence over this ability.  If the Pokémon is a ground-type and thus immune to Electric moves, its immunity prevents the Special Attack boost.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (32, 'Serene-grace', 'This Pokémon\'s moves have twice their usual effect chance.  An effect chance is a move\'s chance to inflict a status ailment, cause a stat change, or make the target flinch in addition to the move\'s main effect.  For example, flamethrower\'s chance of burning the target is doubled, but protect\'s chance of success and air cutter\'s increased critical hit rate are unaffected.  secret power is unaffected.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (33, 'Swift-swim', 'This Pokémon\'s Speed is doubled during rain.  This bonus does not count as a stat modifier.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (34, 'Chlorophyll', 'This Pokémon\'s Speed is doubled during strong sunlight.  This bonus does not count as a stat modifier.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (35, 'Illuminate', 'Overworld: If the lead Pokémon has this ability, the wild encounter rate is doubled.  This ability has no effect in battle.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (36, 'Trace', 'When this Pokémon enters battle, it copies a random opponent\'s ability.  This ability cannot copy flower gift, forecast, illusion, imposter, multitype, trace, wonder guard, or zen mode.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (37, 'Huge-power', 'This Pokémon\'s Attack is doubled while in battle.  This bonus does not count as a stat modifier.  This ability functions identically to pure power.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (38, 'Poison-point', 'Whenever a move makes contact with this Pokémon, the move\'s user has a 30% chance of being poisoned.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (39, 'Inner-focus', 'This Pokémon cannot flinch.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (40, 'Magma-armor', 'This Pokémon cannot be frozen.  If a Pokémon is frozen and acquires this ability, it will immediately thaw out; this includes when regaining a lost ability upon leaving battle.  Overworld: If any Pokémon in the party has this ability, each egg in the party has its hatch counter decreased by 2 (rather than 1) each step cycle, making eggs hatch roughly twice as quickly.  This effect does not stack if multiple Pokémon have this ability or flame body.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (41, 'Water-veil', 'This Pokémon cannot be burned.  If a Pokémon is burned and acquires this ability, its burn is healed; this includes when regaining a lost ability upon leaving battle.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (42, 'Magnet-pull', 'While this Pokémon is in battle, opposing steel-type Pokémon cannot flee or switch out.  Pokémon with run away can still flee.  Pokémon can still switch out with the use of a move or item.  Overworld: If the lead Pokémon has this ability, Steel-type Pokémon have a higher encounter rate.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (43, 'Soundproof', 'This Pokémon is immune to moves flagged as being sound-based.  heal bell is unaffected.  uproar still prevents this Pokémon from sleeping.  This Pokémon can still receive a Perish Song counter through baton pass, and will retain a Perish Song counter if it acquires this ability after Perish Song is used.  howl, roar of time, sonic boom, and yawn are not flagged as sound-based.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (44, 'Rain-dish', 'This Pokémon heals for 1/16 of its maximum HP after each turn during rain.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (45, 'Sand-stream', 'The weather changes to a sandstorm when this Pokémon enters battle and does not end unless cancelled by another weather condition.  If multiple Pokémon with this ability, drizzle, drought, or snow warning are sent out at the same time, the abilities will activate in order of Speed, respecting trick room.  Each ability\'s weather will cancel the previous weather, and only the weather summoned by the slowest of the Pokémon will stay.  Overworld: If the lead Pokémon has this ability, the wild encounter rate is halved in a sandstorm.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (46, 'Pressure', 'Moves targetting this Pokémon use one extra PP.  This ability stacks if multiple targets have it.  This ability still affects moves that fail or miss.  This ability does not affect ally moves that target either the entire field or just its side, nor this Pokémon\'s self-targetted moves; it does, however, affect single-targetted ally moves aimed at this Pokémon, ally moves that target all other Pokémon, and opponents\' moves that target the entire field.  If this ability raises a move\'s PP cost above its remaining PP, it will use all remaining PP.  When this Pokémon enters battle, all participating trainers are notified that it has this ability.  Overworld: If the lead Pokémon has this ability, higher-levelled Pokémon have their encounter rate increased.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (47, 'Thick-fat', 'This Pokémon takes half as much damage from fire- and ice-type moves.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (48, 'Early-bird', 'This Pokémon\'s remaining sleep turn count falls by 2 rather than 1.  If this Pokémon\'s sleep counter is at 1, it will fall to 0 and then the Pokémon will wake up.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (49, 'Flame-body', 'Whenever a move makes contact with this Pokémon, the move\'s user has a 30% chance of being burned.  Overworld: If any Pokémon in the party has this ability, each egg in the party has its hatch counter decreased by 2 (rather than 1) each step cycle, making eggs hatch roughly twice as quickly.  This effect does not stack if multiple Pokémon have this ability or magma armor.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (50, 'Run-away', 'This Pokémon is always successful fleeing from wild battles, even if trapped by a move or ability.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (51, 'Keen-eye', 'This Pokémon cannot have its accuracy lowered.  This ability does not prevent any accuracy losses other than stat modifiers, such as the accuracy cut from fog; nor does it prevent other Pokémon\'s evasion from making this Pokémon\'s moves less accurate.  This Pokémon can still be passed negative accuracy modifiers through heart swap.  Overworld: If the first Pokémon in the party has this ability, any random encounter with a Pokémon five or more levels lower than it has a 50% chance of being skipped.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (52, 'Hyper-cutter', 'This Pokémon\'s Attack cannot be lowered by other Pokémon.  This ability does not prevent any Attack losses other than stat modifiers, such as the Attack cut from a burn.  This Pokémon can still be passed negative Attack modifiers through heart swap or power swap.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (53, 'Pickup', 'At the end of each turn, if another Pokémon consumed or Flung a held item that turn, this Pokémon picks up the item if it is not already holding one.  After each battle, this Pokémon has a 10% chance of picking up an item if it is not already holding one.  The air balloon and eject button cannot be picked up.  The items that may be found vary by game, and, since Pokémon Emerald, by the Pokémon\'s level.  This ability is checked after the battle ends, at which point any temporary ability changes have worn off.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (54, 'Truant', 'Every second turn on which this Pokémon should attempt to use a move, it will instead do nothing ("loaf around").  Loafing around interrupts moves that take multiple turns the same way paralysis, flinching, etc do.  Most such moves, for example bide or rollout, are simply cut off upon loafing around.  Attacks with a recharge turn, such as hyper beam, do not have to recharge; attacks with a preparation turn, such as fly, do not end up being used.  Moves that are forced over multiple turns and keep going through failure, such as outrage, uproar, or any move forced by encore, keep going as usual.  If this Pokémon is confused, its confusion is not checked when loafing around; the Pokémon cannot hurt itself, and its confusion does not end or come closer to ending.  If this Pokémon attempts to move but fails, e.g. because of paralysis or gravity, it still counts as having moved and will loaf around the next turn.  If it does not attempt to move, e.g. because it is asleep or frozen, whatever it would have done will be postponed until its next attempt; that is, it will either loaf around or move as usual, depending on what it last did.  This ability cannot be changed with worry seed, but it can be disabled with gastro acid, changed with role play, or traded away with skill swap.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (55, 'Hustle', 'This Pokémon\'s physical moves do 1.5× as much regular damage, but have 0.8× their usual accuracy.  Special moves are unaffected.  Moves that do set damage, such as seismic toss, have their accuracy affected, but not their damage.  Overworld: If the lead Pokémon has this ability, higher-levelled Pokémon have their encounter rate increased.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (56, 'Cute-charm', 'Whenever a move makes contact with this Pokémon, the move\'s user has a 30% chance of being infatuated.  Overworld: If the first Pokémon in the party has this ability, any wild Pokémon whose species can be either gender has a 2/3 chance of being set to the opposite gender, and a 1/3 chance of having a random gender as usual.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (57, 'Plus', 'This Pokémon has 1.5× its Special Attack if any friendly Pokémon has plus or minus.  This bonus does not count as a stat modifier.  If either ability is disabled by gastro acid, both lose their effect.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (58, 'Minus', 'This Pokémon has 1.5× its Special Attack if any friendly Pokémon has plus or minus.  This bonus does not count as a stat modifier.  If either ability is disabled by gastro acid, both lose their effect.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (59, 'Forecast', 'During rain, strong sunlight, or hail, this Pokémon\'s type changes to water, fire, or ice, respectively, and its form changes to match.  This ability has no effect for any Pokémon other than castform.  If the weather ends or becomes anything that does not trigger this ability, or a Pokémon with air lock or cloud nine enters battle, this Pokémon\'s type and form revert to their default.  If this ability is lost or disabled, this Pokémon cannot change its current type and form until it regains its ability.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (60, 'Sticky-hold', 'This Pokémon\'s hold item cannot be removed by other Pokémon.  Damaging moves that would remove this Pokémon\'s item can still inflict damage against this Pokémon, e.g. knock off or pluck.  This Pokémon can still use moves that involve the loss of its own item, e.g. fling or trick.  Overworld: If the lead Pokémon has this ability, the encounter rate while fishing is increased.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (61, 'Shed-skin', 'After each turn, this Pokémon has a 33% of being cured of any major status ailment.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (62, 'Guts', 'Whenever this Pokémon is asleep, burned, paralyzed, or poisoned, it has 1.5× its Attack.  This Pokémon is not affected by the usual Attack cut from a burn.  This bonus does not count as a stat modifier.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (63, 'Marvel-scale', 'Whenever this Pokémon has a major status ailment, it has 1.5× its Defense.  This bonus does not count as a stat modifier.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (64, 'Liquid-ooze', 'Whenever a Pokémon would heal after hitting this Pokémon with a leeching move like absorb, it instead loses as many HP as it would usually gain.  dream eater is unaffected.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (65, 'Overgrow', 'When this Pokémon has 1/3 or less of its HP remaining, its grass-type moves inflict 1.5× as much regular damage.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (66, 'Blaze', 'When this Pokémon has 1/3 or less of its HP remaining, its fire-type moves inflict 1.5× as much regular damage.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (67, 'Torrent', 'When this Pokémon has 1/3 or less of its HP remaining, its water-type moves inflict 1.5× as much regular damage.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (68, 'Swarm', 'When this Pokémon has 1/3 or less of its HP remaining, its bug-type moves inflict 1.5× as much regular damage.  Overworld: If the lead Pokémon has this ability, the wild encounter rate is increased.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (69, 'Rock-head', 'This Pokémon does not receive recoil damage from its recoil moves.  struggle\'s recoil is unaffected.  This ability does not prevent crash damage from missing with jump kick or high jump kick.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (70, 'Drought', 'The weather changes to strong sunlight when this Pokémon enters battle and does not end unless cancelled by another weather condition.  If multiple Pokémon with this ability, drizzle, sand stream, or snow warning are sent out at the same time, the abilities will activate in order of Speed, respecting trick room.  Each ability\'s weather will cancel the previous weather, and only the weather summoned by the slowest of the Pokémon will stay.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (71, 'Arena-trap', 'While this Pokémon is in battle, opposing Pokémon cannot flee or switch out.  flying-type Pokémon and Pokémon in the air, e.g. due to levitate or magnet rise, are unaffected.  Pokémon with run away can still flee.  Pokémon can still switch out with the use of a move or item.  Overworld: If the lead Pokémon has this ability, the wild encounter rate is doubled.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (72, 'Vital-spirit', 'This Pokémon cannot be asleep.  This causes rest to fail altogether.  If a Pokémon is asleep and acquires this ability, it will immediately wake up; this includes when regaining a lost ability upon leaving battle.  This ability functions identically to insomnia in battle.  Overworld: If the lead Pokémon has this ability, higher-levelled Pokémon have their encounter rate increased.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (73, 'White-smoke', 'This Pokémon cannot have its stats lowered by other Pokémon.  This ability does not prevent any stat losses other than stat modifiers, such as the Speed cut from paralysis; nor self-inflicted stat drops, such as the Special Attack drop from overheat; nor opponent-triggered stat boosts, such as the Attack boost from swagger.  This Pokémon can still be passed negative stat modifiers through guard swap, heart swap, or power swap.  This ability functions identically to clear body in battle.  Overworld: If the lead Pokémon has this ability, the wild encounter rate is halved.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (74, 'Pure-power', 'This Pokémon\'s Attack is doubled in battle.  This bonus does not count as a stat modifier.  This ability functions identically to huge power.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (75, 'Shell-armor', 'Moves cannot score critical hits against this Pokémon.  This ability functions identically to battle armor.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (76, 'Air-lock', 'While this Pokémon is in battle, weather can still be in play, but will not have any of its effects.  This ability functions identically to cloud nine.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (77, 'Tangled-feet', 'When this Pokémon is confused, it has twice its evasion.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (78, 'Motor-drive', 'Whenever an electric-type move hits this Pokémon, its Speed rises one stage, negating any other effect on it.  This ability will not take effect if this Pokémon is immune to Electric moves.  Electric moves will ignore this Pokémon\'s substitute.  This effect includes non-damaging moves, i.e. thunder wave.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (79, 'Rivalry', 'This Pokémon inflicts 1.25× as much regular damage against Pokémon of the same gender and 0.75× as much regular damage against Pokémon of the opposite gender.  If either Pokémon is genderless, damage is unaffected.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (80, 'Steadfast', 'Whenever this Pokémon flinches, its Speed rises one stage.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (81, 'Snow-cloak', 'During hail, this Pokémon has 1.25× its evasion, and it does not take hail damage regardless of type.  The evasion bonus does not count as a stat modifier.  Overworld: If the lead Pokémon has this ability, the wild encounter rate is halved in snow.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (82, 'Gluttony', 'This Pokémon eats any held Berry triggered by low HP when it falls below 50% of its HP, regardless of the Berry\'s usual threshold.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (83, 'Anger-point', 'Whenever this Pokémon receives a critical hit, its Attack rises to the maximum of 6 stages.  This ability will still take effect if the critical hit is received by a substitute.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (84, 'Unburden', 'When this Pokémon uses or loses its held item, its Speed is doubled.  If it gains another item or leaves battle, this bonus is lost.  This includes when the Pokémon drops its item because of knock off.  This bonus does not count as a stat modifier.  There is no notification when this ability takes effect.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (85, 'Heatproof', 'This Pokémon takes half as much damage from fire-type moves and burns.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (86, 'Simple', 'Each stage of this Pokémon\'s stat modifiers acts as two stages.  These doubled stages are still limited to a minimum of -6 and a maximum of 6.  This Pokémon can still accumulate less than -3 or more than 3 stages of stat modifiers, even though the extra ones have no effect after doubling.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (87, 'Dry-skin', 'This Pokémon takes 1/8 of its maximum HP in damage after each turn during strong sunlight, but it heals for 1/8 of its HP each turn during rain.  This Pokémon takes 1.25× as much damage from fire-type moves, but whenever a water move hits it, it heals for 1/4 its maximum HP instead.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (88, 'Download', 'When this Pokémon enters battle, its Attack or Special Attack, whichever corresponds to its opponents\' weaker total defensive stat, rises one stage.  In the event of a tie, Special Attack is raised.  This ability also takes effect when acquired during a battle.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (89, 'Iron-fist', 'Moves flagged as being punch-based have 1.2× their base power for this Pokémon.  sucker punch is not flagged as punch-based; its original, Japanese name only means "surprise attack".');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (90, 'Poison-heal', 'If this Pokémon is poisoned, it will heal for 1/8 of its maximum HP after each turn rather than taking damage.  This includes bad poison.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (91, 'Adaptability', 'This Pokémon inflicts twice as much damage with moves whose types match its own, rather than the usual same-type attack bonus of 1.5×.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (92, 'Skill-link', 'This Pokémon always hits five times with two-to-five-hit moves, such as icicle spear.  It also bypasses the accuracy checks on triple kick\'s second and third hits.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (93, 'Hydration', 'At the end of each turn, if it is raining, Hydration will cure the PokÃ©mon of any non-volatile status condition. If it cures a status condition, it does so before burn or poison damage is dealt on that turn. PokÃ©mon who are made drowsy by Yawn will not fall asleep until after Hydration takes effect, and as such, will not be healed until the end of the next turn.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (94, 'Solar-power', 'During strong sunlight, this Pokémon has 1.5× its Special Attack but takes 1/8 of its maximum HP in damage after each turn.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (95, 'Quick-feet', 'Whenever this Pokémon has a major status ailment, it has 1.5× its Speed.  This Pokémon is not affected by the usual Speed cut from paralysis.  Overworld: If the lead Pokémon has this ability, the wild encounter rate is halved.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (96, 'Normalize', 'This Pokémon\'s moves all act as if they were normal-type.  Moves that inflict typeless damage do so as usual.  Moves of variable type, such as hidden power, are affected.  They otherwise work as usual, however; weather ball, for example, is always forced to be Normal, but it still has doubled power and looks different during weather.  As thunder wave is prevented by immunities, unlike most non-damaging moves, it does not affect ghost-type Pokémon under the effect of this ability.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (97, 'Sniper', 'This Pokémon inflicts triple damage with critical hits, rather than the usual double damage.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (98, 'Magic-guard', 'This Pokémon is immune to damage not directly caused by a move.  For example, this Pokémon takes no damage from from weather, recoil, status ailments, or spikes, but it still suffers from the Attack cut when burned, and a life orb will still power up this Pokémon\'s moves without damaging it.  Anything that directly depends on such damage will also not happen; for example, leech seed will neither hurt this Pokémon nor heal the opponent, and Pokémon with a jaboca berry or rowap berry will not consume the berry when hit by this Pokémon.  The following are unaffected: struggle, pain split (whether used by or against this Pokémon), belly drum, substitute, curse, moves that knock the user out, and damage from confusion.  This Pokémon will neither lose nor regain HP if it drains HP from a Pokémon with liquid ooze.  If this Pokémon is badly poisoned, the poison counter is still increased each turn; if the Pokémon loses this ability, it will begin taking as much damage as it would be if it had been taking increasing damage each turn.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (99, 'No-guard', 'Moves used by or against this Pokémon never miss.  One-hit KO moves are unaffected.  Moves affected by this ability can hit Pokémon during the preparation turn of moves like dig or fly.  Overworld: If the lead Pokémon has this ability, the wild encounter rate is doubled.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (100, 'Stall', 'This Pokémon moves last within its priority bracket.  Multiple Pokémon with this ability move in order of Speed amongst themselves.  The full incense and lagging tail take precedence over this ability; that is, Pokémon with these items move after Pokémon with this ability.  Pokémon with both this ability and one of these items are delayed as much as if they had only the item.  This ability works as usual during trick room: Pokémon with this ability will move in reverse order of Speed after Pokémon without it.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (101, 'Technician', 'This Pokémon\'s moves have 1.5× their power if their base power is 60 or less.  This includes moves of variable power, such as hidden power and magnitude, when their power is 60 or less.  helping hand\'s power boost is taken into account for any move, as is defense curl\'s power boost for rollout.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (102, 'Leaf-guard', 'This Pokémon cannot be given a major status ailment during strong sunlight.  This ability does not heal prior status ailments.  rest will fail altogether with this ability in effect.  yawn will immediately fail if used on this Pokémon during strong sunlight, and an already-used Yawn will fail if the weather turns to strong sunlight in the meantime.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (103, 'Klutz', 'In battle, this Pokémon cannot use its held item, nor will the item have any passive effect on the battle, positive or negative.  This Pokémon also cannot use fling.  The Speed cut from the iron ball and the effort items (the macho brace, power weight, power bracer, power belt, power lens, power band, and power anklet) is unaffected.  Items that do not directly affect the battle, such as the exp share, the amulet coin, or the soothe bell, work as usual.  All held items work as usual out of battle.  Other moves that use the held item, such as natural gift and switcheroo, work as usual.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (104, 'Mold-breaker', 'This Pokémon\'s moves completely ignore abilities that could hinder or prevent their effect on the target.  For example, this Pokémon\'s moves ignore abilities that would fully negate them, such as water absorb; abilities that would prevent any of their effects, such as clear body, shell armor, or sticky hold; and abilities that grant any general protective benefit, such as simple, snow cloak, or thick fat.  If an ability could either hinder or help this Pokémon\'s moves, e.g. dry skin or unaware, the ability is ignored either way.  Abilities that do not fit this description, even if they could hinder moves in some other way, are not affected.  For example, cursed body only affects potential future uses of the move, while liquid ooze and shadow tag can only hinder a move\'s effect on the user.  This ablity cannot ignore type or form changes granted by abilities, for example color change or forecast; nor effects that were caused by abilities but are no longer tied to an ability, such as the rain from drizzle.  This ability cannot ignore multitype at all.  An ability ignored by this ability is only nullified while the move is being used.  For example, this Pokémon\'s moves can paralyze a Pokémon with limber, but Limber will activate and heal the paralysis immediately thereafter, and this Pokémon\'s spikes are not affected by this ability after they have been placed.  When this Pokémon enters battle, all participating trainers are notified that it has this ability.  This ability functions identically to teravolt and turboblaze.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (105, 'Super-luck', 'This Pokémon\'s moves have critical hit rates one stage higher than normal.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (106, 'Aftermath', 'When this Pokémon is knocked out by a move that makes contact, the move\'s user takes 1/4 its maximum HP in damage.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (107, 'Anticipation', 'When this Pokémon enters battle, if one of its opponents has a move that is super effective against it, self destruct, explosion, or a one-hit knockout move, all participating trainers are notified.  The move itself is not revealed; only that there is such a move.  Moves that inflict typeless damage, such as future sight, and moves of variable type, such as hidden power, count as their listed types.  counter, metal burst, mirror coat, and one-hit KO moves to which this Pokémon is immune do not trigger this ability.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (108, 'Forewarn', 'When this Pokémon enters battle, it reveals the move with the highest base power known by any opposing Pokémon to all participating trainers.  In the event of a tie, one is chosen at random.  Moves without a listed base power are assigned one as follows:  Power | Moves ----: | -----   160 | One-hit KO moves: fissure, guillotine, horn drill, and sheer cold   120 | Counter moves: counter, metal burst, and mirror coat    80 | Variable power or set damage: crush grip, dragon rage, electro ball, endeavor, final gambit, flail, frustration, grass knot, gyro ball, heat crash, heavy slam, hidden power, low kick, natural gift, night shade, psywave, return, reversal, seismic toss, sonic boom, trump card, and wring out     0 | Any such move not listed ');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (109, 'Unaware', 'This Pokémon ignores other Pokémon\'s stat modifiers for the purposes of damage and accuracy calculation.  Effectively, this affects modifiers of every stat except Speed.  The power of punishment and stored power is calculated as usual.  When this Pokémon hurts itself in confusion, its stat modifiers affect damage as usual.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (110, 'Tinted-lens', 'This Pokémon deals twice as much damage with moves that are not very effective against the target.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (111, 'Filter', 'This Pokémon takes 0.75× as much damage from moves that are super effective against it.  This ability functions identically to solid rock.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (112, 'Slow-start', 'This Pokémon\'s Attack and Speed are halved for five turns upon entering battle.  This ability also takes effect when acquired during battle.  If this Pokémon loses its ability before the five turns are up, its Attack and Speed return to normal; if it then regains this ability without leaving battle, its Attack and Speed are halved again, but the counter keeps counting from where it was.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (113, 'Scrappy', 'This Pokémon ignores ghost-type Pokémon\'s immunity to normal- and fighting-type moves.  Ghost Pokémon\'s other types affect damage as usual.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (114, 'Storm-drain', 'All other Pokémon\'s single-target water-type moves are redirected to this Pokémon, if it is an eligible target.  Other Pokémon\'s Water moves raise this Pokémon\'s Special Attack one stage, negating any other effect on it, and cannot miss it.  If the move\'s intended target also has this ability, the move is not redirected.  When multiple Pokémon with this ability are possible targets for redirection, the move is redirected to the one with the highest Speed stat, or, in the case of a tie, to a random tied Pokémon.  follow me takes precedence over this ability.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (115, 'Ice-body', 'This Pokémon heals for 1/16 of its maximum HP after each turn during hail, and it does not take hail damage regardless of type.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (116, 'Solid-rock', 'This Pokémon takes 0.75× as much damage from moves that are super effective against it.  This ability functions identically to filter.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (117, 'Snow-warning', 'The weather changes to hail when this Pokémon enters battle and does not end unless cancelled by another weather condition.  If multiple Pokémon with this ability, drizzle, drought, or sand stream are sent out at the same time, the abilities will activate in order of Speed, respecting trick room.  Each ability\'s weather will cancel the previous weather, and only the weather summoned by the slowest of the Pokémon will stay.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (118, 'Honey-gather', 'This Pokémon has a chance of picking up honey after each battle.  This chance starts at 5% and rises another 5% after every tenth level: 5% from level 1–10, 10% from 11–20, and so on, up to 50% from 91–100.  This ability is checked after the battle ends, at which point any temporary ability changes have worn off.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (119, 'Frisk', 'When this Pokémon enters battle, it reveals an opposing Pokémon\'s held item to all participating trainers.  In a double battle, if one opponent has an item, this Pokémon will Frisk that Pokémon; if both have an item, it will Frisk one at random.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (120, 'Reckless', 'This Pokémon\'s recoil moves and crash moves have 1.2× their base power.  struggle is unaffected.  The "crash moves" are the moves that damage the user upon missing: jump kick and high jump kick.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (121, 'Multitype', 'If this Pokémon is holding an elemental Plate, its type and form change to match the Plate.  This Pokémon\'s held item, whether or not it is a Plate, cannot be taken by covet or thief, nor removed by knock off, nor traded by switcheroo or trick.  Covet, Thief, and Knock Off still inflict damage against this Pokémon.  Unlike with sticky hold, this Pokémon cannot use fling, Switcheroo, or Trick to lose its item itself, nor gain an item through Switcheroo or Trick if it does not have one.  This ability has no effect for any Pokémon other than arceus.  This ability cannot be traded with skill swap, nor copied with role play or trace, nor disabled with gastro acid, nor changed with worry seed.  This Pokémon cannot use Skill Swap or Role Play to lose its ability itself.  mold breaker cannot ignore this ability.  If a Pokémon Transforms into an Arceus with this ability, it will Transform into Arceus\'s default, normal-type form.  If the Transforming Pokémon is holding a Plate, this ability will then activate and change the Pokémon into the corresponding form.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (122, 'Flower-gift', 'Friendly Pokémon have 1.5× their Attack and Special Defense during strong sunlight if any friendly Pokémon has this ability.  Unlike forecast, multitype, and zen mode, this ability is not tied to its Pokémon\'s form change; cherrim will switch between its forms even if it loses this ability.  As such, this ability also works if obtained by a Pokémon other than Cherrim.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (123, 'Bad-dreams', 'Opposing Pokémon take 1/8 of their maximum HP in damage after each turn while they are asleep.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (124, 'Pickpocket', 'Whenever a move makes contact with this Pokémon, if it does not have a held item, it steals the attacker\'s held item.  This Pokémon cannot steal upon being knocked out.  It can steal if the attacker has a substitute, but cannot steal when its own Substitute is hit.  If a move hits multiple times, only the last hit triggers this ability.  If this Pokémon is wild, it cannot steal from a trained Pokémon.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (125, 'Sheer-force', 'This Pokémon\'s moves with extra effects have 1.3× their power, but lose their extra effects.  An effect chance is a move\'s chance to inflict a status ailment, cause a stat change, or make the target flinch in addition to the move\'s main effect. For example, thunder shock\'s paralysis is an extra effect, but thunder wave\'s is not, nor are knock off\'s item removal and air cutter\'s increased critical hit rate.  Moves that lower the user\'s stats are unaffected.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (126, 'Contrary', 'Whenever this Pokémon\'s stats would be raised, they are instead lowered by the same amount, and vice versa.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (127, 'Unnerve', 'Opposing Pokémon cannot eat held Berries while this Pokémon is in battle.  Affected Pokémon can still use bug bite or pluck to eat a target\'s Berry.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (128, 'Defiant', 'When any of this Pokémon\'s stats are lowered, its Attack rises by two stages.  If multiple stats are lowered at once, this ability takes effect with each stat lowered.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (129, 'Defeatist', 'This Pokémon\'s Attack and Special Attack are halved when it has half its HP or less.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (130, 'Cursed-body', 'Moves that hit this Pokémon have a 30% chance of being Disabled afterward.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (131, 'Healer', 'Friendly Pokémon next to this Pokémon in double and triple battles each have a 30% chance of being cured of any major status ailment after each turn.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (132, 'Friend-guard', 'All friendly Pokémon take 0.75× as much direct damage from moves while this Pokémon is in battle.  This effect stacks if multiple allied Pokémon have it.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (133, 'Weak-armor', 'Whenever a physical move hits this Pokémon, its Speed rises one stage and its Defense falls one stage.  This ability triggers on every hit of a multiple-hit move.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (134, 'Heavy-metal', 'This Pokémon has double the usual weight for its species.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (135, 'Light-metal', 'This Pokémon has half the usual weight for its species.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (136, 'Multiscale', 'This Pokémon takes half as much damage when it is hit having full HP.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (137, 'Toxic-boost', 'This Pokémon has 1.5× its Attack when poisoned.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (138, 'Flare-boost', 'This Pokémon has 1.5× its Special Attack when burned.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (139, 'Harvest', 'After each turn, if the last item this Pokémon consumed was a Berry and it is not currently holding an item, it has a 50% chance of regaining that Berry, or a 100% chance during strong sunlight.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (140, 'Telepathy', 'This Pokémon does not take damage from friendly Pokémon\'s moves, including single-target moves aimed at it.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (141, 'Moody', 'After each turn, one of this Pokémon\'s stats at random rises two stages, and another falls one stage.  If a stat is already at 6 or -6 stages, it will not be chosen to be increased or decreased, respectively.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (142, 'Overcoat', 'This Pokémon does not take damage from weather.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (143, 'Poison-touch', 'This Pokémon\'s contact moves have a 30% chance of poisoning the target with each hit.  This counts as an extra effect for the purposes of shield dust.  This ability takes effect before mummy.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (144, 'Regenerator', 'This Pokémon regains 1/3 of its maximum HP when it is switched out for another Pokémon under any circumstances other than having fainted.  This ability does not take effect when a battle ends.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (145, 'Big-pecks', 'This Pokémon\'s Defense cannot be lowered by other Pokémon.  This Pokémon can still be passed negative Defense modifiers through heart swap or guard swap.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (146, 'Sand-rush', 'This Pokémon\'s Speed is doubled during a sandstorm, and it does not take sandstorm damage, regardless of type.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (147, 'Wonder-skin', 'Non-damaging moves have exactly 50% base accuracy against this Pokémon.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (148, 'Analytic', 'This Pokémon\'s moves have 1.3× their power when it moves last in a turn.  future sight and doom desire are unaffected.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (149, 'Illusion', 'This Pokémon, upon being sent out, appears to have the species, nickname, and Poké Ball of the last Pokémon in the party that is able to battle.  This illusion breaks upon being hit by a damaging move.  Other damage, e.g. from weather or spikes, does not break the illusion, nor does damage done to a substitute.  If the party order becomes temporarily shuffled around as Pokémon are switched out in battle, this ability chooses the last Pokémon according to that shuffled order.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (150, 'Imposter', 'This Pokémon transforms into a random opponent upon entering battle.  This effect is identical to the move transform.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (151, 'Infiltrator', 'This Pokémon\'s moves ignore light screen, reflect, and safeguard.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (152, 'Mummy', 'Whenever a contact move hits this Pokémon, the attacking Pokémon\'s ability changes to Mummy.  multitype is unaffected.  If a Pokémon with moxie knocks this Pokémon out, the former\'s ability will change without taking effect.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (153, 'Moxie', 'This Pokémon\'s Attack rises one stage upon knocking out another Pokémon, even a friendly Pokémon.  This ability does not take effect when the Pokémon indirectly causes another Pokémon to faint, e.g. through poison or spikes.  If this Pokémon knocks out a Pokémon with mummy, the former\'s ability will change without taking effect.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (154, 'Justified', 'Whenever a dark-type move hits this Pokémon, its Attack rises one stage.  The move is not negated in any way.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (155, 'Rattled', 'This Pokémon\'s Speed rises one stage with each hit from a damaging dark-, ghost-, or bug-type move.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (156, 'Magic-bounce', 'When this Pokémon is targeted by a move flagged as being reflectable, the move is redirected to its user.  All reflectable moves are non-damaging, and most non-damaging moves that target other Pokémon are reflectable.  A move reflected by this ability or magic coat cannot be reflected back.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (157, 'Sap-sipper', 'Whenever a grass-type move hits this Pokémon, its Attack rises one stage, negating any other effect on it.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (158, 'Prankster', 'This Pokémon\'s non-damaging moves have their priority increased by one stage.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (159, 'Sand-force', 'During a sandstorm, this Pokémon\'s rock-, ground-, and steel-type moves have 1.3× their base power.  This Pokémon does not take sandstorm damage, regardless of type.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (160, 'Iron-barbs', 'Whenever a move makes contact with this Pokémon, the move\'s user takes 1/8 of its maximum HP in damage.  This ability functions identically to rough skin.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (161, 'Zen-mode', 'This Pokémon switches between Standard Mode and Zen Mode after each turn depending on its HP.  Below 50% of its maximum HP, it switches to Zen Mode, and at 50% or above, it switches to Standard Mode.  This Pokémon returns to Standard Mode upon leaving battle or losing this ability.  This ability has no effect if this Pokémon is not a darmanitan.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (162, 'Victory-star', 'All friendly Pokémon\'s moves, including this Pokémon\'s own moves, have 1.1× their usual accuracy while this Pokémon is in battle.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (163, 'Turboblaze', 'This Pokémon\'s moves completely ignore abilities that could hinder or prevent their effect on the target.  For example, this Pokémon\'s moves ignore abilities that would fully negate them, such as water absorb; abilities that would prevent any of their effects, such as clear body, shell armor, or sticky hold; and abilities that grant any general protective benefit, such as simple, snow cloak, or thick fat.  If an ability could either hinder or help this Pokémon\'s moves, e.g. dry skin or unaware, the ability is ignored either way.  Abilities that do not fit this description, even if they could hinder moves in some other way, are not affected.  For example, cursed body only affects potential future uses of the move, while liquid ooze and shadow tag can only hinder a move\'s effect on the user.  This ablity cannot ignore type or form changes granted by abilities, for example color change or forecast; nor effects that were caused by abilities but are no longer tied to an ability, such as the rain from drizzle.  This ability cannot ignore multitype at all.  An ability ignored by this ability is only nullified while the move is being used.  For example, this Pokémon\'s moves can paralyze a Pokémon with limber, but Limber will activate and heal the paralysis immediately thereafter, and this Pokémon\'s spikes are not affected by this ability after they have been placed.  When this Pokémon enters battle, all participating trainers are notified that it has this ability.  This ability functions identically to mold breaker and teravolt.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (164, 'Teravolt', 'This Pokémon\'s moves completely ignore abilities that could hinder or prevent their effect on the target.  For example, this Pokémon\'s moves ignore abilities that would fully negate them, such as water absorb; abilities that would prevent any of their effects, such as clear body, shell armor, or sticky hold; and abilities that grant any general protective benefit, such as simple, snow cloak, or thick fat.  If an ability could either hinder or help this Pokémon\'s moves, e.g. dry skin or unaware, the ability is ignored either way.  Abilities that do not fit this description, even if they could hinder moves in some other way, are not affected.  For example, cursed body only affects potential future uses of the move, while liquid ooze and shadow tag can only hinder a move\'s effect on the user.  This ablity cannot ignore type or form changes granted by abilities, for example color change or forecast; nor effects that were caused by abilities but are no longer tied to an ability, such as the rain from drizzle.  This ability cannot ignore multitype at all.  An ability ignored by this ability is only nullified while the move is being used.  For example, this Pokémon\'s moves can paralyze a Pokémon with limber, but Limber will activate and heal the paralysis immediately thereafter, and this Pokémon\'s spikes are not affected by this ability after they have been placed.  When this Pokémon enters battle, all participating trainers are notified that it has this ability.  This ability functions identically to mold breaker and turboblaze.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (165, 'Aroma-veil', 'Protects allies against moves that affect their mental state.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (166, 'Flower-veil', 'Protects friendly grass Pokémon from having their stats lowered by other Pokémon.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (167, 'Cheek-pouch', 'Restores HP upon eating a Berry, in addition to the Berry\'s effect.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (168, 'Protean', 'Changes the bearer\'s type to match each move it uses.  The type change takes place just before the move is used.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (169, 'Fur-coat', 'Halves damage from physical attacks.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (170, 'Magician', 'Steals the target\'s held item when the bearer uses a damaging move.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (171, 'Bulletproof', 'Protects against bullet, ball, and bomb-based moves.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (172, 'Competitive', 'Raises Special Attack by two stages upon having any stat lowered.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (173, 'Strong-jaw', 'Strengthens biting moves to 1.5× their power.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (174, 'Refrigerate', 'Turns the bearer\'s normal-type moves into ice-type moves.  Moves changed by this ability have 1.3× their power.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (175, 'Sweet-veil', 'Prevents friendly Pokémon from sleeping.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (176, 'Stance-change', 'Changes aegislash to Blade Forme before using a damaging move, or Shield Forme before using kings shield.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (177, 'Gale-wings', 'Raises flying moves\' priority by one stage.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (178, 'Mega-launcher', 'Strengthens aura and pulse moves to 1.5× their power.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (179, 'Grass-pelt', 'Boosts Defense while grassy terrain is in effect.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (180, 'Symbiosis', 'Passes the bearer\'s held item to an ally when the ally uses up its item.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (181, 'Tough-claws', 'Strengthens moves that make contact to 1.33× their power.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (182, 'Pixilate', 'Turns the bearer\'s normal-type moves into fairy moves.  Moves changed by this ability have 1.3× their power.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (183, 'Gooey', 'Lowers attacking Pokémon\'s Speed by one stage on contact.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (186, 'Dark-aura', 'Strengthens dark moves for all friendly and opposing Pokémon.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (187, 'Fairy-aura', 'Strengthens fairy moves for all friendly and opposing Pokémon.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (188, 'Aura-break', 'While this Pokémon is on the field, dark aura and fairy aura weaken moves of their respective types to 2/3 their power, rather than strengthening them.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (192, 'Stamina', 'Raises this Pokémon\'s Defense by one stage when it takes damage from a move.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (193, 'Wimp-out', 'After this Pokémon is hit by a move, if that move caused this Pokémon\'s HP to drop below half, it switches out.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (194, 'Emergency-exit', 'After this Pokémon is hit by a move, if that move caused this Pokémon\'s HP to drop below half, it switches out.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (195, 'Water-compaction', 'Raises this Pokémon\'s Defense by two stages when it\'s hit by a Water move.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (196, 'Merciless', 'This Pokémon\'s moves critical hit against poisoned targets.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (197, 'Shields-down', 'When this Pokémon enters battle and at the end of each turn, if its HP is 50% or above, it changes into Meteor Form; otherwise, it changes into Core Form.  In Meteor Form, it cannot be given a major status ailment (though existing ones are not cured), cannot become drowsy from yawn, and cannot use rest (which will simply fail).  This ability cannot be copied, replaced, or nullified.  This ability only takes effect for Minior.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (198, 'Stakeout', 'This Pokémon\'s moves have double power against Pokémon that switched in this turn.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (199, 'Water-bubble', 'When this Pokémon is hit by a Fire move, the damage is halved.  When this Pokémon uses a Water move, the power is doubled. This Pokémon cannot be burned, and if it becomes burned, the burn is immediately cured.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (200, 'Steelworker', 'This Pokémon\'s Steel moves have 1.5× power.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (201, 'Berserk', 'Whenever this Pokémon takes damage from a move that causes its HP to drop below 50%, its Special Attack rises by one stage.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (202, 'Slush-rush', 'During Hail, this Pokémon has double Speed.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (203, 'Long-reach', 'A move used by this Pokémon will not make contact.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (204, 'Liquid-voice', 'When this Pokémon uses a move that is sound-based, that move\'s type is Water.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (205, 'Triage', 'This Pokémon\'s healing moves have their priority increased by 3.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (208, 'Schooling', 'If this Pokémon is a wishiwashi and level 20 or above, then when it enters battle and at the start of each turn, it becomes Schooling Form if its HP is 25% or higher and Solo Form otherwise.  This ability cannot be replaced, copied, or nullified.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (209, 'Disguise', 'If this Pokémon is in its Disguised Form and takes damage from a move, it switches to its Busted Form and the damage is prevented.  Other effects are not prevented.  This ability cannot be copied or replaced.  This ability only takes effect for Mimikyu.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (212, 'Corrosion', 'This Pokémon\'s moves and item ignore the usual immunity of Poison and Steel Pokémon when attempting to inflict poison.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (213, 'Comatose', 'This Pokémon always acts as though it were Asleep.  It cannot be given another status ailment; it\'s unaffected by yawn; it can use sleep talk; and so on.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (214, 'Queenly-majesty', 'When an opposing Pokémon attempts to use a move that targets this Pokémon or an ally, and that move has priority, it will fail.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (215, 'Innards-out', 'When this Pokémon faints from an opponent\'s move, that opponent takes damage equal to the HP this Pokémon had remaining.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (216, 'Dancer', 'Whenever another Pokémon uses a dance move, this Pokémon will use the same move immediately afterwards.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (217, 'Battery', 'Ally Pokémon\'s moves have their power increased to 1.3×.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (218, 'Fluffy', 'Damage from contact moves is halved.  Damage from Fire moves is doubled.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (219, 'Dazzling', 'When an opposing Pokémon attempts to use a move that targets this Pokémon or an ally, and that move has priority, it will fail.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (220, 'Soul-heart', 'This Pokémon\'s Special Attack rises by one stage every time any Pokémon faints.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (222, 'Receiver', 'When an ally faints, this Pokémon gains its Ability.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (224, 'Beast-boost', 'Raises this Pokémon\'s highest stat by one stage when it faints another Pokémon.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (225, 'Rks-system', 'Changes this Pokémon\'s type to match its held Memory.  This ability cannot be copied, replaced, or nullified.  This ability only takes effect for Silvally.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (226, 'Electric-surge', 'When this Pokémon enters battle, it changes the terrain to electric terrain.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (227, 'Psychic-surge', 'When this Pokémon enters battle, it changes the terrain to psychic terrain.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (228, 'Misty-surge', 'When this Pokémon enters battle, it changes the terrain to misty terrain.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (229, 'Grassy-surge', 'When this Pokémon enters battle, it changes the terrain to grassy terrain.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (230, 'Full-metal-body', 'This Pokémon\'s stats cannot be lowered by other Pokémon\'s moves or abilities.  This effect only applies to normal stat modifications and not more exotic effects such as topsy turvy or power swap.  This Ability is not bypassed by mold breaker, teravolt, or turboblaze.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (231, 'Shadow-shield', 'When this Pokémon has full HP, regular damage (not fixed damage!) from moves is halved.  This ability cannot be nullified.');
INSERT INTO ABILITY(ABILITY_ID, ABILITY_NAME, ABILITY_EFFECT) VALUES (232, 'Prism-armor', 'Super-effective damage this Pokémon takes is reduced to 0.75×.  This Ability is not bypassed by mold breaker, teravolt, or turboblaze.');

INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (1, 'Normal', 'A8A878');
INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (2, 'Fighting', 'C03028');
INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (3, 'Flying', 'A890F0');
INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (4, 'Poison', 'A040A0');
INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (5, 'Ground', 'E0C068');
INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (6, 'Rock', 'B8A038');
INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (7, 'Bug', 'A8B820');
INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (8, 'Ghost', '705898');
INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (9, 'Steel', 'B8B8D0');
INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (10, 'Fire', 'F08030');
INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (11, 'Water', '6890F0');
INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (12, 'Grass', '78C850');
INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (13, 'Electric', 'F8D030');
INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (14, 'Psychic', 'F85888');
INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (15, 'Ice', '98D8D8');
INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (16, 'Dragon', '7038F8');
INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (17, 'Dark', '705848');
INSERT INTO TYPE(TYPE_ID, TYPE_NAME, TYPE_COLOR_HEX) VALUE (18, 'Fairy', 'EE99AC');

INSERT INTO TYPE_EFFECTIVENESS(ATTACK_TYPE_ID, DEFEND_TYPE_ID, EFFECTIVENESS_MULTIPLIER)
VALUES (1, 6, 0.500000),
       (1, 9, 0.500000),
       (1, 8, 0.000000),
       (2, 1, 2.000000),
       (2, 6, 2.000000),
       (2, 9, 2.000000),
       (2, 15, 2.000000),
       (2, 17, 2.000000),
       (2, 3, 0.500000),
       (2, 4, 0.500000),
       (2, 7, 0.500000),
       (2, 14, 0.500000),
       (2, 18, 0.500000),
       (2, 8, 0.000000),
       (3, 2, 2.000000),
       (3, 7, 2.000000),
       (3, 12, 2.000000),
       (3, 6, 0.500000),
       (3, 9, 0.500000),
       (3, 13, 0.500000),
       (4, 12, 2.000000),
       (4, 18, 2.000000),
       (4, 4, 0.500000),
       (4, 5, 0.500000),
       (4, 6, 0.500000),
       (4, 8, 0.500000),
       (4, 9, 0.000000),
       (5, 4, 2.000000),
       (5, 6, 2.000000),
       (5, 9, 2.000000),
       (5, 10, 2.000000),
       (5, 13, 2.000000),
       (5, 7, 0.500000),
       (5, 12, 0.500000),
       (5, 3, 0.000000),
       (6, 3, 2.000000),
       (6, 7, 2.000000),
       (6, 10, 2.000000),
       (6, 15, 2.000000),
       (6, 2, 0.500000),
       (6, 5, 0.500000),
       (6, 9, 0.500000),
       (7, 12, 2.000000),
       (7, 14, 2.000000),
       (7, 17, 2.000000),
       (7, 2, 0.500000),
       (7, 3, 0.500000),
       (7, 4, 0.500000),
       (7, 8, 0.500000),
       (7, 9, 0.500000),
       (7, 10, 0.500000),
       (7, 18, 0.500000),
       (8, 8, 2.000000),
       (8, 14, 2.000000),
       (8, 17, 0.500000),
       (8, 1, 0.000000),
       (9, 6, 2.000000),
       (9, 15, 2.000000),
       (9, 18, 2.000000),
       (9, 9, 0.500000),
       (9, 10, 0.500000),
       (9, 11, 0.500000),
       (9, 13, 0.500000),
       (10, 7, 2.000000),
       (10, 9, 2.000000),
       (10, 12, 2.000000),
       (10, 15, 2.000000),
       (10, 6, 0.500000),
       (10, 10, 0.500000),
       (10, 11, 0.500000),
       (10, 16, 0.500000),
       (11, 5, 2.000000),
       (11, 6, 2.000000),
       (11, 10, 2.000000),
       (11, 11, 0.500000),
       (11, 12, 0.500000),
       (11, 16, 0.500000),
       (12, 5, 2.000000),
       (12, 6, 2.000000),
       (12, 11, 2.000000),
       (12, 3, 0.500000),
       (12, 4, 0.500000),
       (12, 7, 0.500000),
       (12, 9, 0.500000),
       (12, 10, 0.500000),
       (12, 12, 0.500000),
       (12, 16, 0.500000),
       (13, 3, 2.000000),
       (13, 11, 2.000000),
       (13, 12, 0.500000),
       (13, 13, 0.500000),
       (13, 16, 0.500000),
       (13, 5, 0.000000),
       (14, 2, 2.000000),
       (14, 4, 2.000000),
       (14, 9, 0.500000),
       (14, 14, 0.500000),
       (14, 17, 0.000000),
       (15, 3, 2.000000),
       (15, 5, 2.000000),
       (15, 12, 2.000000),
       (15, 16, 2.000000),
       (15, 9, 0.500000),
       (15, 10, 0.500000),
       (15, 11, 0.500000),
       (15, 15, 0.500000),
       (16, 16, 2.000000),
       (16, 9, 0.500000),
       (16, 18, 0.000000),
       (17, 8, 2.000000),
       (17, 14, 2.000000),
       (17, 2, 0.500000),
       (17, 17, 0.500000),
       (17, 18, 0.500000),
       (18, 2, 2.000000),
       (18, 16, 2.000000),
       (18, 17, 2.000000),
       (18, 4, 0.500000),
       (18, 9, 0.500000),
       (18, 10, 0.500000);

INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (2, 'Bold');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (3, 'Modest');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (4, 'Calm');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (5, 'Timid');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (6, 'Lonely');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (8, 'Mild');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (9, 'Gentle');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (10, 'Hasty');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (11, 'Adamant');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (12, 'Impish');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (14, 'Careful');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (15, 'Rash');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (16, 'Jolly');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (17, 'Naughty');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (18, 'Lax');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (20, 'Naive');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (21, 'Brave');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (22, 'Relaxed');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (23, 'Quiet');
INSERT INTO NATURE(NATURE_ID, NATURE_NAME) VALUE (24, 'Sassy');

INSERT INTO STAT(STAT_ID, STAT_NAME) VALUE (1, 'HP');
INSERT INTO STAT(STAT_ID, STAT_NAME) VALUE (2, 'Attack');
INSERT INTO STAT(STAT_ID, STAT_NAME) VALUE (3, 'Defense');
INSERT INTO STAT(STAT_ID, STAT_NAME) VALUE (4, 'Special Attack');
INSERT INTO STAT(STAT_ID, STAT_NAME) VALUE (5, 'Special Defense');
INSERT INTO STAT(STAT_ID, STAT_NAME) VALUE (6, 'Speed');

INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (6, 2, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (11, 2, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (17, 2, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (21, 2, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (2, 2, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (3, 2, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (4, 2, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (5, 2, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (2, 3, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (12, 3, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (18, 3, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (22, 3, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (6, 3, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (8, 3, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (9, 3, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (10, 3, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (3, 4, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (8, 4, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (15, 4, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (23, 4, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (11, 4, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (12, 4, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (14, 4, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (16, 4, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (4, 5, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (9, 5, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (14, 5, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (24, 5, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (15, 5, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (17, 5, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (18, 5, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (20, 5, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (5, 6, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (10, 6, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (16, 6, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (20, 6, 1.1);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (21, 6, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (22, 6, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (23, 6, 0.9);
INSERT INTO NATURE_STAT(NATURE_ID, STAT_ID, STAT_MULTIPLIER) VALUE (24, 6, 0.9);

INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (1, 12, 4, 1, 7, 65, null, 34, 'Bulbasaur', 'A strange seed was planted on its back at birth. The plant sprouts and grows with this POKéMON.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (2, 12, 4, 1, 7, 65, null, 34, 'Ivysaur', 'When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (3, 12, 4, 1, 7, 65, null, 34, 'Venusaur', 'The plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (4, 10, null, 1, 14, 66, null, 94, 'Charmander', 'Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (5, 10, null, 1, 14, 66, null, 94, 'Charmeleon', 'When it swings its burning tail, it elevates the temperature to unbearably high levels.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (6, 10, 3, 1, 14, 66, null, 94, 'Charizard', 'Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (7, 11, null, 1, 2, 67, null, 44, 'Squirtle', 'Shoots water at prey while in the water. Withdraws into its shell when in danger.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/7.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (8, 11, null, 1, 2, 67, null, 44, 'Wartortle', 'When tapped, this POKéMON will pull in its head, but its tail will still stick out a little bit.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/8.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (9, 11, null, 1, 2, 67, null, 44, 'Blastoise', 'It deliberately makes itself heavy so it can with­ stand the recoil of the water jets it fires.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/9.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (10, 7, null, 3, null, 19, null, 50, 'Caterpie', 'It releases a stench from its red antenna to repel enemies. It grows by molting repeatedly.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (11, 7, null, 3, null, 61, null, null, 'Metapod', 'This POKéMON is vulnerable to attack while its shell is soft, exposing its weak and tender body.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/11.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (12, 7, 3, 3, null, 14, null, 110, 'Butterfree', 'In battle, it flaps its wings at high speed to release highly toxic dust into the air.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/12.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (13, 7, 4, 3, null, 19, null, 50, 'Weedle', 'Often found in forests, eating leaves. It has a sharp venomous stinger on its head.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/13.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (14, 7, 4, 3, null, 61, null, null, 'Kakuna', 'Almost incapable of moving, this POKéMON can only harden its shell to protect itself from predators.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/14.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (15, 7, 4, 3, null, 68, null, 97, 'Beedrill', 'Flies at high speed and attacks using its large venomous stingers on its forelegs and tail.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/15.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (16, 1, 3, 4, null, 51, 77, 145, 'Pidgey', 'A common sight in forests and woods. It flaps its wings at ground level to kick up blinding sand.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/16.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (17, 1, 3, 4, null, 51, 77, 145, 'Pidgeotto', 'Very protective of its sprawling territorial area, this POKéMON will fiercely peck at any intruder.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/17.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (18, 1, 3, 4, null, 51, 77, 145, 'Pidgeot', 'When hunting, it skims the surface of water at high speed to pick off unwary prey such as MAGIKARP.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/18.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (19, 1, null, 5, null, 50, 62, 55, 'Rattata', 'Bites anything when it attacks. Small and very quick, it is a common sight in many places.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/19.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (20, 1, null, 5, null, 50, 62, 55, 'Raticate', 'It uses its whis­ kers to maintain its balance. It apparently slows down if they are cut off.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/20.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (21, 1, 3, 4, null, 51, null, 97, 'Spearow', 'Eats bugs in grassy areas. It has to flap its short wings at high speed to stay airborne.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/21.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (22, 1, 3, 4, null, 51, null, 97, 'Fearow', 'With its huge and magnificent wings, it can keep aloft without ever having to land for rest.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/22.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (23, 4, null, 5, 14, 22, 61, 127, 'Ekans', 'Moves silently and stealthily. Eats the eggs of birds, such as PIDGEY and SPEAROW, whole.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/23.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (24, 4, null, 5, 14, 22, 61, 127, 'Arbok', 'It is rumored that the ferocious warning markings on its belly differ from area to area.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/24.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (25, 13, null, 5, 6, 9, null, 31, 'Pikachu', 'When several of these POKéMON gather, their electricity could build and cause lightning storms.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (26, 13, null, 5, 6, 9, null, 31, 'Raichu', 'Its tail discharges electricity into the ground, protecting it from getting shocked.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/26.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (27, 5, null, 5, null, 8, null, 146, 'Sandshrew', 'Burrows deep underground in arid locations far from water. It only emerges to hunt for food.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/27.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (28, 5, null, 5, null, 8, null, 146, 'Sandslash', 'Curls up into a spiny ball when threatened. It can roll while curled up to attack or escape.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/28.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (29, 4, null, 1, 5, 38, 79, 55, 'Nidoran-f', 'Although small, its venomous barbs render this POKéMON dangerous. The female has smaller horns.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/29.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (30, 4, null, 15, null, 38, 79, 55, 'Nidorina', 'The female\'s horn develops slowly. Prefers physical attacks such as clawing and biting.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/30.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (31, 4, 5, 15, null, 38, 79, 125, 'Nidoqueen', 'Its hard scales provide strong protection. It uses its hefty bulk to execute powerful moves.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/31.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (32, 4, null, 1, 5, 38, 79, 55, 'Nidoran-m', 'Stiffens its ears to sense danger. The larger its horns, the more powerful its secreted venom.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/32.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (33, 4, null, 1, 5, 38, 79, 55, 'Nidorino', 'An aggressive POKéMON that is quick to attack. The horn on its head secretes a powerful venom.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/33.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (34, 4, 5, 1, 5, 38, 79, 125, 'Nidoking', 'One swing of its mighty tail can snap a telephone pole as if it were a matchstick.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/34.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (35, 18, null, 6, null, 56, 98, 132, 'Clefairy', 'Its magical and cute appeal has many admirers. It is rare and found only in certain areas.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/35.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (36, 18, null, 6, null, 56, 98, 109, 'Clefable', 'A timid fairy POKéMON that is rarely seen. It will run and hide the moment it senses people.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/36.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (37, 10, null, 5, null, 18, null, 70, 'Vulpix', 'At the time of birth, it has just one tail. The tail splits from its tip as it grows older.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/37.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (38, 10, null, 5, null, 18, null, 70, 'Ninetales', 'Very smart and very vengeful. Grabbing one of its many tails could result in a 1000-year curse.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/38.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (39, 1, 18, 6, null, 56, 172, 132, 'Jigglypuff', 'When its huge eyes light up, it sings a mysteriously soothing melody that lulls its enemies to sleep.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/39.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (40, 1, 18, 6, null, 56, 172, 119, 'Wigglytuff', 'The body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/40.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (41, 4, 3, 4, null, 39, null, 151, 'Zubat', 'Forms colonies in perpetually dark places. Uses ultrasonic waves to identify and approach targets.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/41.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (42, 4, 3, 4, null, 39, null, 151, 'Golbat', 'Once it strikes, it will not stop draining energy from the victim even if it gets too heavy to fly.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/42.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (43, 12, 4, 7, null, 34, null, 50, 'Oddish', 'During the day, it keeps its face buried in the ground. At night, it wanders around sowing its seeds.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/43.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (44, 12, 4, 7, null, 34, null, 1, 'Gloom', 'It secretes a sticky, drool-like honey. Although sweet, it smells too repulsive to get very close.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/44.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (45, 12, 4, 7, null, 34, null, 27, 'Vileplume', 'It has the world\'s largest petals. With every step, the petals shake out heavy clouds of toxic pollen.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/45.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (46, 7, 12, 3, 7, 27, 87, 6, 'Paras', 'Burrows to suck tree roots. The mushrooms on its back grow by draw­ ing nutrients from the bug host.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/46.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (47, 7, 12, 3, 7, 27, 87, 6, 'Parasect', 'A host-parasite pair in which the parasite mushroom has taken over the host bug. Prefers damp places.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/47.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (48, 7, 4, 3, null, 14, 110, 50, 'Venonat', 'Lives in the shadows of tall trees where it eats insects. It is attracted by light at night.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/48.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (49, 7, 4, 3, null, 19, 110, 147, 'Venomoth', 'The dust-like scales covering its wings are color coded to indicate the kinds of poison it has.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/49.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (50, 5, null, 5, null, 8, 71, 159, 'Diglett', 'Lives about one yard underground where it feeds on plant roots. It sometimes appears above ground.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/50.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (51, 5, null, 5, null, 8, 71, 159, 'Dugtrio', 'A team of DIGLETT triplets. It triggers huge earthquakes by burrowing 60 miles underground.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/51.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (52, 1, null, 5, null, 53, 101, 127, 'Meowth', 'Adores circular objects. Wanders the streets on a nightly basis to look for dropped loose change.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/52.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (53, 1, null, 5, null, 7, 101, 127, 'Persian', 'Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/53.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (54, 11, null, 2, 5, 6, 13, 33, 'Psyduck', 'While lulling its enemies with its vacant look, this wily POKéMON will use psychokinetic powers.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/54.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (55, 11, null, 2, 5, 6, 13, 33, 'Golduck', 'Often seen swim­ ming elegantly by lake shores. It is often mistaken for the Japanese monster, Kappa.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/55.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (56, 2, null, 5, null, 72, 83, 128, 'Mankey', 'Extremely quick to anger. It could be docile one moment then thrashing away the next instant.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/56.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (57, 2, null, 5, null, 72, 83, 128, 'Primeape', 'Always furious and tenacious to boot. It will not abandon chasing its quarry until it is caught.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/57.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (58, 10, null, 5, null, 22, 18, 154, 'Growlithe', 'Very protective of its territory. It will bark and bite to repel intruders from its space.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/58.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (59, 10, null, 5, null, 22, 18, 154, 'Arcanine', 'A POKéMON that has been admired since the past for its beauty. It runs agilely as if on wings.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/59.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (60, 11, null, 2, null, 11, 6, 33, 'Poliwag', 'Its newly grown legs prevent it from running. It appears to prefer swimming than trying to stand.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/60.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (61, 11, null, 2, null, 11, 6, 33, 'Poliwhirl', 'Capable of living in or out of water. When out of water, it sweats to keep its body slimy.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/61.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (62, 11, 2, 2, null, 11, 6, 33, 'Poliwrath', 'An adept swimmer at both the front crawl and breast stroke. Easily overtakes the best human swimmers.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/62.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (63, 14, null, 8, null, 28, 39, 98, 'Abra', 'Using its ability to read minds, it will identify impending danger and TELEPORT to safety.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/63.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (64, 14, null, 8, null, 28, 39, 98, 'Kadabra', 'It emits special alpha waves from its body that induce headaches just by being close by.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/64.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (65, 14, null, 8, null, 28, 39, 98, 'Alakazam', 'Its brain can out­ perform a super­ computer. Its intelligence quotient is said to be 5,000.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/65.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (66, 2, null, 8, null, 62, 99, 80, 'Machop', 'Loves to build its muscles. It trains in all styles of martial arts to become even stronger.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/66.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (67, 2, null, 8, null, 62, 99, 80, 'Machoke', 'Its muscular body is so powerful, it must wear a power save belt to be able to regulate its motions.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/67.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (68, 2, null, 8, null, 62, 99, 80, 'Machamp', 'Using its heavy muscles, it throws powerful punches that can send the victim clear over the horizon.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/68.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (69, 12, 4, 7, null, 34, null, 82, 'Bellsprout', 'Even though its body is extremely skinny, it is blindingly fast when catching its prey.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/69.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (70, 12, 4, 7, null, 34, null, 82, 'Weepinbell', 'It spits out POISONPOWDER to immobilize the enemy and then finishes it with a spray of ACID.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/70.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (71, 12, 4, 7, null, 34, null, 82, 'Victreebel', 'Said to live in huge colonies deep in jungles, although no one has ever returned from there.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/71.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (72, 11, 4, 9, null, 29, 64, 44, 'Tentacool', 'Drifts in shallow seas. Anglers who hook them by accident are often punished by its stinging acid.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/72.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (73, 11, 4, 9, null, 29, 64, 44, 'Tentacruel', 'The tentacles are normally kept short. On hunts, they are extended to ensnare and immobilize prey.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/73.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (74, 6, 5, 10, null, 69, 5, 8, 'Geodude', 'Found in fields and mountains. Mistaking them for boulders, people often step or trip on them.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/74.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (75, 6, 5, 10, null, 69, 5, 8, 'Graveler', 'Rolls down slopes to move. It rolls over any obstacle without slowing or changing its direction.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/75.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (76, 6, 5, 10, null, 69, 5, 8, 'Golem', 'Its boulder-like body is extremely hard. It can easily withstand dynamite blasts without damage.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/76.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (77, 10, null, 5, null, 50, 18, 49, 'Ponyta', 'Its hooves are 10 times harder than diamonds. It can trample anything completely flat in little time.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/77.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (78, 10, null, 5, null, 50, 18, 49, 'Rapidash', 'Very competitive, this POKéMON will chase anything that moves fast in the hopes of racing it.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/78.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (79, 11, 14, 1, 2, 12, 20, 144, 'Slowpoke', 'Incredibly slow and dopey. It takes 5 seconds for it to feel pain when under attack.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/79.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (80, 11, 14, 1, 2, 12, 20, 144, 'Slowbro', 'The SHELLDER that is latched onto SLOWPOKE\'s tail is said to feed on the host\'s left over scraps.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/80.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (81, 13, 9, 10, null, 42, 5, 148, 'Magnemite', 'Uses anti-gravity to stay suspended. Appears without warning and uses THUNDER WAVE and similar moves.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/81.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (82, 13, 9, 10, null, 42, 5, 148, 'Magneton', 'Formed by several MAGNEMITEs linked together. They frequently appear when sunspots flare up.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/82.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (83, 1, 3, 4, 5, 51, 39, 128, 'Farfetchd', 'The sprig of green onions it holds is its weapon. It is used much like a metal sword.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/83.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (84, 1, 3, 4, null, 50, 48, 77, 'Doduo', 'A bird that makes up for its poor flying with its fast foot speed. Leaves giant footprints.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/84.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (85, 1, 3, 4, null, 50, 48, 77, 'Dodrio', 'Uses its three brains to execute complex plans. While two heads sleep, one head stays awake.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/85.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (86, 11, null, 2, 5, 47, 93, 115, 'Seel', 'The protruding horn on its head is very hard. It is used for bashing through thick ice.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/86.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (87, 11, 15, 2, 5, 47, 93, 115, 'Dewgong', 'Stores thermal energy in its body. Swims at a steady 8 knots even in intensely cold waters.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/87.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (88, 4, null, 11, null, 1, 60, 143, 'Grimer', 'Appears in filthy areas. Thrives by sucking up polluted sludge that is pumped out of factories.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/88.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (89, 4, null, 11, null, 1, 60, 143, 'Muk', 'Thickly covered with a filthy, vile sludge. It is so toxic, even its footprints contain poison.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/89.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (90, 11, null, 9, null, 75, 92, 142, 'Shellder', 'Its hard shell repels any kind of attack. It is vulnerable only when its shell is open.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/90.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (91, 11, 15, 9, null, 75, 92, 142, 'Cloyster', 'CLOYSTER that live in seas with harsh tidal currents grow large, sharp spikes on their shells.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/91.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (92, 8, 4, 11, null, 26, null, null, 'Gastly', 'Almost invisible, this gaseous POKéMON cloaks the target and puts it to sleep without notice.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/92.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (93, 8, 4, 11, null, 26, null, null, 'Haunter', 'Because of its ability to slip through block walls, it is said to be from an­ other dimension.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/93.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (94, 8, 4, 11, null, 130, null, null, 'Gengar', 'Under a full moon, this POKéMON likes to mimic the shadows of people and laugh at their fright.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/94.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (95, 6, 5, 10, null, 69, 5, 133, 'Onix', 'As it grows, the stone portions of its body harden to become similar to a diamond, but colored black.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/95.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (96, 14, null, 8, null, 15, 108, 39, 'Drowzee', 'Puts enemies to sleep then eats their dreams. Occasionally gets sick from eating bad dreams.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/96.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (97, 14, null, 8, null, 15, 108, 39, 'Hypno', 'When it locks eyes with an enemy, it will use a mix of PSI moves such as HYPNOSIS and CONFUSION.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/97.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (98, 11, null, 9, null, 52, 75, 125, 'Krabby', 'Its pincers are not only powerful weapons, they are used for balance when walking sideways.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/98.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (99, 11, null, 9, null, 52, 75, 125, 'Kingler', 'The large pincer has 10000 hp of crushing power. However, its huge size makes it unwieldy to use.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/99.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (100, 13, null, 10, null, 43, 9, 106, 'Voltorb', 'Usually found in power plants. Easily mistaken for a POKé BALL, they have zapped many people.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/100.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (101, 13, null, 10, null, 43, 9, 106, 'Electrode', 'It stores electric energy under very high pressure. It often explodes with little or no provocation.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/101.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (102, 12, 14, 7, null, 34, null, 139, 'Exeggcute', 'Often mistaken for eggs. When disturbed, they quickly gather and attack in swarms.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/102.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (103, 12, 14, 7, null, 34, null, 139, 'Exeggutor', 'Legend has it that on rare occasions, one of its heads will drop off and continue on as an EXEGGCUTE.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/103.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (104, 5, null, 1, null, 69, 31, 4, 'Cubone', 'Because it never removes its skull helmet, no one has ever seen this POKéMON\'s real face.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/104.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (105, 5, null, 1, null, 69, 31, 4, 'Marowak', 'The bone it holds is its key weapon. It throws the bone skillfully like a boomerang to KO targets.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/105.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (106, 2, null, 8, null, 7, 120, 84, 'Hitmonlee', 'When in a hurry, its legs lengthen progressively. It runs smoothly with extra long, loping strides.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/106.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (107, 2, null, 8, null, 51, 89, 39, 'Hitmonchan', 'While apparently doing nothing, it fires punches in lightning fast volleys that are impossible to see.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/107.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (108, 1, null, 1, null, 20, 12, 13, 'Lickitung', 'Its tongue can be extended like a chameleon\'s. It leaves a tingling sensation when it licks enemies.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/108.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (109, 4, null, 11, null, 26, null, null, 'Koffing', 'Because it stores several kinds of toxic gases in its body, it is prone to exploding without warning.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/109.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (110, 4, null, 11, null, 26, null, null, 'Weezing', 'Where two kinds of poison gases meet, 2 KOFFINGs can fuse into a WEEZING over many years.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/110.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (111, 5, 6, 1, 5, 31, 69, 120, 'Rhyhorn', 'Its massive bones are 1000 times harder than human bones. It can easily knock a trailer flying.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/111.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (112, 5, 6, 1, 5, 31, 69, 120, 'Rhydon', 'Protected by an armor-like hide, it is capable of living in molten lava of 3,600 degrees.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/112.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (113, 1, null, 6, null, 30, 32, 131, 'Chansey', 'A rare and elusive POKéMON that is said to bring happiness to those who manage to get it.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/113.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (114, 12, null, 7, null, 34, 102, 144, 'Tangela', 'The whole body is swathed with wide vines that are similar to sea­ weed. Its vines shake as it walks.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/114.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (115, 1, null, 1, null, 48, 113, 39, 'Kangaskhan', 'The infant rarely ventures out of its mother\'s protective pouch until it is 3 years old.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/115.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (116, 11, null, 2, 14, 33, 97, 6, 'Horsea', 'Known to shoot down flying bugs with precision blasts of ink from the surface of the water.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/116.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (117, 11, null, 2, 14, 38, 97, 6, 'Seadra', 'Capable of swim­ ming backwards by rapidly flapping its wing-like pectoral fins and stout tail.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/117.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (118, 11, null, 12, null, 33, 41, 31, 'Goldeen', 'Its tail fin billows like an elegant ballroom dress, giving it the nickname of the Water Queen.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/118.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (119, 11, null, 12, null, 33, 41, 31, 'Seaking', 'In the autumn spawning season, they can be seen swimming power­ fully up rivers and creeks.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/119.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (120, 11, null, 9, null, 35, 30, 148, 'Staryu', 'An enigmatic POKéMON that can effortlessly regenerate any appendage it loses in battle.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/120.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (121, 11, 14, 9, null, 35, 30, 148, 'Starmie', 'Its central core glows with the seven colors of the rainbow. Some people value the core as a gem.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/121.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (122, 14, 18, 8, null, 43, 111, 101, 'Mr-mime', 'If interrupted while it is miming, it will slap around the offender with its broad hands.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/122.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (123, 7, 3, 3, null, 68, 101, 80, 'Scyther', 'With ninja-like agility and speed, it can create the illusion that there is more than one.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/123.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (124, 15, 14, 8, null, 12, 108, 87, 'Jynx', 'Its cries sound like human speech. However, it is impossible to tell what it is trying to say.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/124.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (125, 13, null, 8, null, 9, null, 72, 'Electabuzz', 'Normally found near power plants, they can wander away and cause major blackouts in cities.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/125.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (126, 10, null, 8, null, 49, null, 72, 'Magmar', 'Its body always burns with an orange glow that enables it to hide perfectly among flames.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/126.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (127, 7, null, 3, null, 52, 104, 153, 'Pinsir', 'If it fails to crush the victim in its pincers, it will swing it around and toss it hard.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/127.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (128, 1, null, 5, null, 22, 83, 125, 'Tauros', 'When it targets an enemy, it charges furiously while whipping its body with its long tails.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/128.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (129, 11, null, 12, 14, 33, null, 155, 'Magikarp', 'In the distant past, it was somewhat stronger than the horribly weak descendants that exist today.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/129.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (130, 11, 3, 12, 14, 22, null, 153, 'Gyarados', 'Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/130.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (131, 11, 15, 1, 2, 11, 75, 93, 'Lapras', 'A POKéMON that has been over­ hunted almost to extinction. It can ferry people across the water.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/131.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (132, 1, null, 13, null, 7, null, 150, 'Ditto', 'It can freely recombine its own cellular structure to transform into other life-forms.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/132.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (133, 1, null, 5, null, 50, 91, 107, 'Eevee', 'Its genetic code is irregular. It may mutate if it is exposed to radiation from element STONEs.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/133.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (134, 11, null, 5, null, 11, null, 93, 'Vaporeon', 'Lives close to water. Its long tail is ridged with a fin which is often mistaken for a mermaid\'s.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/134.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (135, 13, null, 5, null, 10, null, 95, 'Jolteon', 'It accumulates negative ions in the atmosphere to blast out 10000- volt lightning bolts.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/135.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (136, 10, null, 5, null, 18, null, 62, 'Flareon', 'When storing thermal energy in its body, its temperature could soar to over 1600 degrees.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/136.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (137, 1, null, 10, null, 36, 88, 148, 'Porygon', 'A POKéMON that consists entirely of programming code. Capable of moving freely in cyberspace.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/137.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (138, 6, 11, 2, 9, 33, 75, 133, 'Omanyte', 'Although long extinct, in rare cases, it can be genetically resurrected from fossils.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/138.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (139, 6, 11, 2, 9, 33, 75, 133, 'Omastar', 'Apparently, it cracked SHELLDER\'s shell with its sharp fangs and sucked out the insides.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/139.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (140, 6, 11, 2, 9, 33, 4, 133, 'Kabuto', 'A POKéMON that was resurrected from a fossil found in what was once the ocean floor eons ago.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/140.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (141, 6, 11, 2, 9, 33, 4, 133, 'Kabutops', 'Its sleek shape is perfect for swim­ ming. It slashes prey with its claws and drains the body fluids.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/141.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (142, 6, 3, 4, null, 69, 46, 127, 'Aerodactyl', 'A ferocious, pre­ historic POKéMON that goes for the enemy\'s throat with its serrated saw-like fangs.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/142.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (143, 1, null, 1, null, 17, 47, 82, 'Snorlax', 'Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/143.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (144, 15, 3, 15, null, 46, null, 81, 'Articuno', 'A legendary bird POKéMON that is said to appear to doomed people who are lost in icy mountains.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/144.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (145, 13, 3, 15, null, 46, null, 9, 'Zapdos', 'A legendary bird POKéMON that is said to appear from clouds while dropping enormous lightning bolts.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/145.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (146, 10, 3, 15, null, 46, null, 49, 'Moltres', 'It is said to be the legendary bird Pokémon of fire. Every flap of its wings creates a dazzling flare of flames.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/146.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (147, 16, null, 2, 14, 61, null, 63, 'Dratini', 'Long considered a mythical POKéMON until recently when a small colony was found living underwater.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/147.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (148, 16, null, 2, 14, 61, null, 63, 'Dragonair', 'A mystical POKéMON that exudes a gentle aura. Has the ability to change climate conditions.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/148.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (149, 16, 3, 2, 14, 39, null, 136, 'Dragonite', 'An extremely rarely seen marine POKéMON. Its intelligence is said to match that of humans.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/149.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (150, 14, null, 15, null, 46, null, 127, 'Mewtwo', 'It was created by a scientist after years of horrific gene splicing and DNA engineering experiments.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/150.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (151, 14, null, 15, null, 28, null, null, 'Mew', 'So rare that it is still said to be a mirage by many experts. Only a few people have seen it worldwide.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/151.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (152, 12, null, 1, 7, 65, null, 102, 'Chikorita', 'A sweet aroma gently wafts from the leaf on its head. It is docile and loves to soak up the sun\'s rays.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/152.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (153, 12, null, 1, 7, 65, null, 102, 'Bayleef', 'The buds that ring its neck give off a spicy aroma that perks people up.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/153.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (154, 12, null, 1, 7, 65, null, 102, 'Meganium', 'The aroma that rises from its petals contains a substance that calms aggressive feelings.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/154.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (155, 10, null, 5, null, 66, null, 18, 'Cyndaquil', 'It is timid, and always curls it­ self up in a ball. If attacked, it flares up its back for protection.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/155.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (156, 10, null, 5, null, 66, null, 18, 'Quilava', 'Be careful if it turns its back during battle. It means that it will attack with the fire on its back.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/156.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (157, 10, null, 5, null, 66, null, 18, 'Typhlosion', 'If its rage peaks, it becomes so hot that anything that touches it will instantly go up in flames.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/157.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (158, 11, null, 1, 2, 67, null, 125, 'Totodile', 'Its well-developed jaws are powerful and capable of crushing anything. Even its trainer must be careful.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/158.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (159, 11, null, 1, 2, 67, null, 125, 'Croconaw', 'If it loses a fang, a new one grows back in its place. There are always 48 fangs lining its mouth.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/159.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (160, 11, null, 1, 2, 67, null, 125, 'Feraligatr', 'When it bites with its massive and powerful jaws, it shakes its head and savagely tears its victim up.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/160.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (161, 1, null, 5, null, 50, 51, 119, 'Sentret', 'A very cautious POKéMON, it raises itself up using its tail to get a better view of its surroundings.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/161.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (162, 1, null, 5, null, 50, 51, 119, 'Furret', 'The mother puts its offspring to sleep by curling up around them. It corners foes with speed.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/162.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (163, 1, 3, 4, null, 15, 51, 110, 'Hoothoot', 'It always stands on one foot. It changes feet so fast, the movement can rarely be seen.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/163.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (164, 1, 3, 4, null, 15, 51, 110, 'Noctowl', 'Its eyes are specially adapted. They concentrate even faint light and enable it to see in the dark.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/164.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (165, 7, 3, 3, null, 68, 48, 155, 'Ledyba', 'It is very timid. It will be afraid to move if it is alone. But it will be active if it is in a group.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/165.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (166, 7, 3, 3, null, 68, 48, 89, 'Ledian', 'When the stars flicker in the night sky, it flutters about, scattering a glowing powder.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/166.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (167, 7, 4, 3, null, 68, 15, 97, 'Spinarak', 'It lies still in the same pose for days in its web, waiting for its unsuspecting prey to wander close.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/167.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (168, 7, 4, 3, null, 68, 15, 97, 'Ariados', 'It spins string not only from its rear but also from its mouth. It is hard to tell which end is which.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/168.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (169, 4, 3, 4, null, 39, null, 151, 'Crobat', 'It flies so si­ lently through the dark on its four wings that it may not be noticed even when nearby.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/169.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (170, 11, 13, 12, null, 10, 35, 11, 'Chinchou', 'It shoots positive and negative elec­ tricity between the tips of its two antennae and zaps its enemies.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/170.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (171, 11, 13, 12, null, 10, 35, 11, 'Lanturn', 'The light it emits is so bright that it can illuminate the sea\'s surface from a depth of over three miles.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/171.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (172, 13, null, 15, null, 9, null, 31, 'Pichu', 'It is not yet skilled at storing electricity. It may send out a jolt if amused or startled.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/172.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (173, 18, null, 15, null, 56, 98, 132, 'Cleffa', 'According to local rumors, Cleffa are often seen in places where shooting stars have fallen.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/173.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (174, 1, 18, 15, null, 56, 172, 132, 'Igglybuff', 'It has a very soft body. If it starts to roll, it will bounce all over and be impossible to stop.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/174.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (175, 18, null, 15, null, 55, 32, 105, 'Togepi', 'The shell seems to be filled with joy. It is said that it will share good luck when treated kindly.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/175.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (176, 18, 3, 4, 6, 55, 32, 105, 'Togetic', 'They say that it will appear before kindhearted, car­ ing people and shower them with happiness.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/176.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (177, 14, 3, 4, null, 28, 48, 156, 'Natu', 'Because its wings aren\'t yet fully grown, it has to hop to get around. It is always star­ ing at something.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/177.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (178, 14, 3, 4, null, 28, 48, 156, 'Xatu', 'They say that it stays still and quiet because it is seeing both the past and future at the same time.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/178.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (179, 13, null, 1, 5, 9, null, 57, 'Mareep', 'If static elec­ tricity builds in its body, its fleece doubles in volume. Touching it will shock you.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/179.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (180, 13, null, 1, 5, 9, null, 57, 'Flaaffy', 'As a result of storing too much electricity, it developed patches where even downy wool won\'t grow.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/180.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (181, 13, null, 1, 5, 9, null, 57, 'Ampharos', 'The tail\'s tip shines brightly and can be seen from far away. It acts as a beacon for lost people.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/181.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (182, 12, null, 7, null, 34, null, 131, 'Bellossom', 'BELLOSSOM gather at times and appear to dance. They say that the dance is a ritual to summon the sun.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/182.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (183, 11, 18, 2, 6, 47, 37, 157, 'Marill', 'The tip of its tail, which con­ tains oil that is lighter than wa­ ter, lets it swim without drowning.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/183.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (184, 11, 18, 2, 6, 47, 37, 157, 'Azumarill', 'By keeping still and listening in­ tently, it can tell what is in even wild, fast- moving rivers.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/184.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (185, 6, null, 10, null, 5, 69, 155, 'Sudowoodo', 'Although it always pretends to be a tree, its composi­ tion appears to be closer to a rock than a plant.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/185.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (186, 11, null, 2, null, 11, 6, 2, 'Politoed', 'If POLIWAG and POLIWHIRL hear its echoing cry, they respond by gather­ ing from far and wide.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/186.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (187, 12, 3, 6, 7, 34, 102, 151, 'Hoppip', 'To keep from being blown away by the wind, they gather in clusters. They do enjoy gentle breezes, though.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/187.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (188, 12, 3, 6, 7, 34, 102, 151, 'Skiploom', 'The bloom on top of its head opens and closes as the temperature fluc­ tuates up and down.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/188.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (189, 12, 3, 6, 7, 34, 102, 151, 'Jumpluff', 'Once it catches the wind, it deft­ ly controls its cotton-puff spores to float, even around the world.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/189.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (190, 1, null, 5, null, 50, 53, 92, 'Aipom', 'Its tail is so powerful that it can use it to grab a tree branch and hold itself up in the air.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/190.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (191, 12, null, 7, null, 34, 94, 48, 'Sunkern', 'It may drop out of the sky suddenly. If attacked by a SPEAROW, it will violently shake its leaves.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/191.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (192, 12, null, 7, null, 34, 94, 48, 'Sunflora', 'It converts sun­ light into energy. In the darkness after sunset, it closes its petals and becomes still.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/192.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (193, 7, 3, 3, null, 3, 14, 119, 'Yanma', 'If it flaps its wings really fast, it can generate shock waves that will shatter win­ dows in the area.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/193.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (194, 11, 5, 2, 5, 6, 11, 109, 'Wooper', 'This POKéMON lives in cold water. It will leave the water to search for food when it gets cold outside.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/194.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (195, 11, 5, 2, 5, 6, 11, 109, 'Quagsire', 'This carefree POKéMON has an easy-going nature. While swimming, it always bumps into boat hulls.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/195.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (196, 14, null, 5, null, 28, null, 156, 'Espeon', 'It uses the fine hair that covers its body to sense air currents and predict its ene­ my\'s actions.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/196.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (197, 17, null, 5, null, 28, null, 39, 'Umbreon', 'When agitated, this POKéMON pro­ tects itself by spraying poisonous sweat from its pores.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/197.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (198, 17, 3, 4, null, 15, 105, 158, 'Murkrow', 'Feared and loathed by many, it is believed to bring misfortune to all those who see it at night.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/198.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (199, 11, 14, 1, 2, 12, 20, 144, 'Slowking', 'It has incredible intellect and in­ tuition. Whatever the situation, it remains calm and collected.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/199.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (200, 8, null, 11, null, 26, null, null, 'Misdreavus', 'It likes playing mischievous tricks such as screaming and wailing to startle people at night.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/200.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (201, 14, null, 15, null, 26, null, null, 'Unown', 'Its flat, thin body is always stuck on walls. Its shape appears to have some meaning.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/201.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (202, 14, null, 11, null, 23, null, 140, 'Wobbuffet', 'It hates light and shock. If attack­ ed, it inflates its body to pump up its counter­ strike.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/202.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (203, 1, 14, 5, null, 39, 48, 157, 'Girafarig', 'Its tail has a small brain of its own. Beware! If you get close, it may react to your scent and bite.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/203.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (204, 7, null, 3, null, 5, null, 142, 'Pineco', 'It likes to make its shell thicker by adding layers of tree bark. The additional weight doesn\'t bother it.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/204.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (205, 7, 9, 3, null, 5, null, 142, 'Forretress', 'Its entire body is shielded by a steel-hard shell. What lurks inside the armor is a total mystery.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/205.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (206, 1, null, 5, null, 32, 50, 155, 'Dunsparce', 'DUNSPARCE has a drill for its tail. It uses this tail to burrow into the ground backwards. This POKéMON is known to make its nest in complex shapes deep under the ground.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/206.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (207, 5, 3, 3, null, 52, 8, 17, 'Gligar', 'It flies straight at its target’s face, then clamps down on the startled victim to inject poison.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/207.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (208, 9, 5, 10, null, 69, 5, 125, 'Steelix', 'Its body has been compressed deep under the ground. As a result, it is even harder than a diamond.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/208.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (209, 18, null, 5, 6, 22, 50, 155, 'Snubbull', 'Although it looks frightening, it is actually kind and affectionate. It is very popular among women.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/209.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (210, 18, null, 5, 6, 22, 95, 155, 'Granbull', 'It is actually timid and easily spooked. If at­ tacked, it flails about to fend off its attacker.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/210.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (211, 11, 4, 12, null, 38, 33, 22, 'Qwilfish', 'To fire its poison spikes, it must inflate its body by drinking over 2.6 gallons of water all at once.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/211.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (212, 7, 9, 3, null, 68, 101, 135, 'Scizor', 'It swings its eye- patterned pincers up to scare its foes. This makes it look like it has three heads.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/212.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (213, 7, 6, 3, null, 5, 82, 126, 'Shuckle', 'The BERRIES it stores in its vase-like shell decompose and become a gooey liquid.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/213.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (214, 7, 2, 3, null, 68, 62, 153, 'Heracross', 'This powerful POKéMON thrusts its prized horn under its enemies’ bellies then lifts and throws them.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/214.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (215, 17, 15, 5, null, 39, 51, 124, 'Sneasel', 'Its paws conceal sharp claws. If attacked, it sud­ denly extends the claws and startles its enemy.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/215.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (216, 1, null, 5, null, 53, 95, 118, 'Teddiursa', 'If it finds honey, its crescent mark glows. It always licks its paws because they are soaked with honey.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/216.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (217, 1, null, 5, null, 62, 95, 127, 'Ursaring', 'Although it is a good climber, it prefers to snap trees with its forelegs and eat fallen BERRIES.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/217.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (218, 10, null, 11, null, 40, 49, 133, 'Slugma', 'Its body is made of magma. If it doesn’t keep moving, its body will cool and harden.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/218.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (219, 10, 6, 11, null, 40, 49, 133, 'Magcargo', 'The shell on its back is just skin that has cooled and hardened. It breaks easily with a slight touch.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/219.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (220, 15, 5, 5, null, 12, 81, 47, 'Swinub', 'It rubs its snout on the ground to find and dig up food. It sometimes discovers hot springs.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/220.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (221, 15, 5, 5, null, 12, 81, 47, 'Piloswine', 'Because the long hair all over its body obscures its sight, it just keeps charging repeatedly.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/221.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (222, 11, 6, 2, 9, 55, 30, 144, 'Corsola', 'It continuously sheds and grows. The tip of its head is prized as a treasure for its beauty.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/222.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (223, 11, null, 2, 12, 55, 97, 141, 'Remoraid', 'It squirts water forcefully from its mouth to shoot down flying prey.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/223.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (224, 11, null, 2, 12, 21, 97, 141, 'Octillery', 'It traps enemies with its suction- cupped tentacles then smashes them with its rock-hard head.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/224.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (225, 15, 3, 2, 5, 72, 55, 15, 'Delibird', 'It carries food all day long. There are tales about lost people who were saved by the food it had.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/225.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (226, 11, 3, 2, null, 33, 11, 41, 'Mantine', 'As it majestically swims, it doesn\'t care if REMORAID attach to it for scavenging its leftovers.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/226.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (227, 9, 3, 4, null, 51, 5, 133, 'Skarmory', 'Its sturdy wings look heavy, but they are actually hollow and light, allowing it to fly freely in the sky.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/227.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (228, 17, 10, 5, null, 48, 18, 127, 'Houndour', 'It uses different kinds of cries for communicating with others of its kind and for pursuing its prey.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/228.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (229, 17, 10, 5, null, 48, 18, 127, 'Houndoom', 'If you are burned by the flames it shoots from its mouth, the pain will never go away.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/229.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (230, 11, 16, 2, 14, 33, 97, 6, 'Kingdra', 'It is said that it usually hides in underwater caves. It can create whirlpools by yawning.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/230.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (231, 5, null, 5, null, 53, null, 8, 'Phanpy', 'It swings its long snout around play­ fully, but because it is so strong, that can be dan­ gerous.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/231.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (232, 5, null, 5, null, 5, null, 8, 'Donphan', 'It has sharp, hard tusks and a rugged hide. Its TACKLE is strong enough to knock down a house.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/232.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (233, 1, null, 10, null, 36, 88, 148, 'Porygon2', 'This upgraded version of PORYGON is designed for space exploration. It can\'t fly, though.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/233.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (234, 1, null, 5, null, 22, 119, 157, 'Stantler', 'Those who stare at its antlers will gradually lose control of their senses and be unable to stand.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/234.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (235, 1, null, 5, null, 20, 101, 141, 'Smeargle', 'A special fluid oozes from the tip of its tail. It paints the fluid everywhere to mark its territory.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/235.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (236, 2, null, 15, null, 62, 80, 72, 'Tyrogue', 'It is always bursting with en­ ergy. To make it­ self stronger, it keeps on fighting even if it loses.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/236.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (237, 2, null, 8, null, 22, 101, 80, 'Hitmontop', 'If you become enchanted by its smooth, elegant, dance-like kicks, you may get drilled hard.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/237.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (238, 15, 14, 15, null, 12, 108, 93, 'Smoochum', 'Its lips are the most sensitive parts on its body. It always uses its lips first to examine things.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/238.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (239, 13, null, 15, null, 9, null, 72, 'Elekid', 'It generates electricity by whirling its arms. However, it can’t store the energy it makes.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/239.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (240, 10, null, 15, null, 49, null, 72, 'Magby', 'Each and every time it inhales and exhales, hot embers dribble out of its mouth and nostrils.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/240.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (241, 1, null, 5, null, 47, 113, 157, 'Miltank', 'Its milk is packed with nutrition, making it the ultimate beverage for the sick or weary.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/241.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (242, 1, null, 6, null, 30, 32, 131, 'Blissey', 'Anyone who takes even one bite of BLISSEY\'s egg be­ comes unfailingly caring and pleas­ ant to everyone.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/242.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (243, 13, null, 15, null, 46, null, 39, 'Raikou', 'The rain clouds it carries let it fire thunderbolts at will. They say that it descended with lightning.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/243.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (244, 10, null, 15, null, 46, null, 39, 'Entei', 'Volcanoes erupt when it barks. Un­ able to restrain its extreme power, it races headlong around the land.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/244.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (245, 11, null, 15, null, 46, null, 39, 'Suicune', 'Said to be the reincarnation of north winds, it can instantly purify filthy, murky water.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/245.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (246, 6, 5, 1, null, 62, null, 8, 'Larvitar', 'It feeds on soil. After it has eaten a large mountain, it will fall asleep so it can grow.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/246.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (247, 6, 5, 1, null, 61, null, null, 'Pupitar', 'Its shell is as hard as sheet rock, and it is also very strong. Its THRASHING can topple a mountain.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/247.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (248, 6, 17, 1, null, 45, null, 127, 'Tyranitar', 'Its body can\'t be harmed by any sort of attack, so it is very eager to make challenges against enemies.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/248.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (249, 14, 3, 15, null, 46, null, 136, 'Lugia', 'It is said that it quietly spends its time deep at the bottom of the sea because its powers are too strong.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/249.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (250, 10, 3, 15, null, 46, null, 144, 'Ho-oh', 'Legends claim this POKéMON flies the world\'s skies con­ tinuously on its magnificent seven- colored wings.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/250.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (251, 14, 12, 15, null, 30, null, null, 'Celebi', 'This POKéMON wan­ ders across time. Grass and trees flourish in the forests in which it has appeared.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/251.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (252, 12, null, 1, 14, 65, null, 84, 'Treecko', 'TREECKO has small hooks on the bottom of its feet that enable it to scale vertical walls. This POKéMON attacks by slamming foes with its thick tail.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/252.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (253, 12, null, 1, 14, 65, null, 84, 'Grovyle', 'The leaves growing out of GROVYLE’s body are convenient for camouflaging it from enemies in the forest. This POKéMON is a master at climbing trees in jungles.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/253.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (254, 12, null, 1, 14, 65, null, 84, 'Sceptile', 'The leaves growing on SCEPTILE’s body are very sharp edged. This POKéMON is very agile - it leaps all over the branches of trees and jumps on its foe from above or behind.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/254.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (255, 10, null, 5, null, 66, null, 3, 'Torchic', 'TORCHIC sticks with its TRAINER, following behind with unsteady steps. This POKéMON breathes fire of over 1,800 degrees F, including fireballs that leave the foe scorched black.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/255.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (256, 10, 2, 5, null, 66, null, 3, 'Combusken', 'COMBUSKEN toughens up its legs and thighs by running through fields and mountains. This POKéMON’s legs possess both speed and power, enabling it to dole out ten kicks in one second.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/256.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (257, 10, 2, 5, null, 66, null, 3, 'Blaziken', 'In battle, BLAZIKEN blows out intense flames from its wrists and attacks foes courageously. The stronger the foe, the more intensely this POKéMON’s wrists burn.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/257.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (258, 11, null, 1, 2, 67, null, 6, 'Mudkip', 'The fin on MUDKIP’s head acts as highly sensitive radar. Using this fin to sense movements of water and air, this POKéMON can determine what is taking place around it without using its eyes.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/258.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (259, 11, 5, 1, 2, 67, null, 6, 'Marshtomp', 'The surface of MARSHTOMP’s body is enveloped by a thin, sticky film that enables it to live on land. This POKéMON plays in mud on beaches when the ocean tide is low.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/259.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (260, 11, 5, 1, 2, 67, null, 6, 'Swampert', 'SWAMPERT is very strong. It has enough power to easily drag a boulder weighing more than a ton. This POKéMON also has powerful vision that lets it see even in murky water.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/260.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (261, 17, null, 5, null, 50, 95, 155, 'Poochyena', 'At first sight, POOCHYENA takes a bite at anything that moves. This POKéMON chases after prey until the victim becomes exhausted. However, it may turn tail if the prey strikes back.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/261.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (262, 17, null, 5, null, 22, 95, 153, 'Mightyena', 'MIGHTYENA gives obvious signals when it is preparing to attack. It starts to growl deeply and then flattens its body. This POKéMON will bite savagely with its sharply pointed fangs.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/262.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (263, 1, null, 5, null, 53, 82, 95, 'Zigzagoon', 'ZIGZAGOON restlessly wanders everywhere at all times. This POKéMON does so because it is very curious. It becomes interested in anything that it happens to see.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/263.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (264, 1, null, 5, null, 53, 82, 95, 'Linoone', 'LINOONE always runs full speed and only in straight lines. If facing an obstacle, it makes a right-angle turn to evade it. This POKéMON is very challenged by gently curving roads.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/264.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (265, 7, null, 3, null, 19, null, 50, 'Wurmple', 'Using the spikes on its rear end,   WURMPLE peels the bark off trees and feeds on the sap that oozes out. This POKéMON’s feet are tipped with suction pads that allow it to cling to glass without slipping.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/265.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (266, 7, null, 3, null, 61, null, null, 'Silcoon', 'SILCOON tethers itself to a tree branch using silk to keep from falling. There,  this POKéMON hangs quietly while it awaits evolution. It peers out of the silk cocoon through a small hole.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/266.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (267, 7, 3, 3, null, 68, null, 79, 'Beautifly', 'BEAUTIFLY’s favorite food is the sweet pollen of flowers. If you want to see this POKéMON, just leave a potted flower by an open window. BEAUTIFLY is sure to come looking for pollen.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/267.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (268, 7, null, 3, null, 61, null, null, 'Cascoon', 'CASCOON makes its protective cocoon by wrapping its body entirely with a fine silk from its mouth. Once the silk goes around its body, it hardens. This POKéMON prepares for its evolution inside the cocoon.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/268.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (269, 7, 4, 3, null, 19, null, 14, 'Dustox', 'DUSTOX is instinctively drawn to light. Swarms of this POKéMON are attracted by the bright lights of cities, where they wreak havoc by stripping the leaves off roadside trees for food.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/269.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (270, 11, 12, 2, 7, 33, 44, 20, 'Lotad', 'LOTAD live in ponds and lakes, where they float on the surface. It grows weak if its broad leaf dies. On rare occasions, this POKéMON travels on land in search of clean water.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/270.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (271, 11, 12, 2, 7, 33, 44, 20, 'Lombre', 'LOMBRE is nocturnal - it will get active after dusk. It is also a mischief-maker. When this POKéMON spots anglers, it tugs on their fishing lines from beneath the surface and enjoys their consternation.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/271.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (272, 11, 12, 2, 7, 33, 44, 20, 'Ludicolo', 'LUDICOLO begins dancing as soon as it hears cheerful, festive music. This POKéMON is said to appear when it hears the singing of children on hiking outings.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/272.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (273, 12, null, 5, 7, 34, 48, 124, 'Seedot', 'SEEDOT attaches itself to a tree branch using the top of its head. It sucks moisture from the tree while hanging off the branch. The more water it drinks, the glossier this POKéMON’s body becomes.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/273.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (274, 12, 17, 5, 7, 34, 48, 124, 'Nuzleaf', 'NUZLEAF live in densely overgrown forests. They occasionally venture out of the forest to startle people. This POKéMON dislikes having its long nose pinched.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/274.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (275, 12, 17, 5, 7, 34, 48, 124, 'Shiftry', 'SHIFTRY is a mysterious POKéMON that is said to live atop towering trees  dating back over a thousand years. It creates terrific windstorms with the fans it holds.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/275.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (276, 1, 3, 4, null, 62, null, 113, 'Taillow', 'TAILLOW courageously stands its ground against foes, however strong they may be. This gutsy POKéMON will remain defiant even after a loss. On the other hand, it cries loudly if it becomes hungry.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/276.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (277, 1, 3, 4, null, 62, null, 113, 'Swellow', 'SWELLOW flies high above our heads, making graceful arcs in the sky. This POKéMON dives at a steep angle as soon as it spots its prey. The hapless prey is tightly grasped by SWELLOW’s clawed feet, preventing escape.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/277.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (278, 11, 3, 2, 4, 51, 93, 44, 'Wingull', 'WINGULL has the habit of carrying prey and valuables in its beak and hiding them in all sorts of locations. This POKéMON rides the winds and flies as if it were skating across the sky.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/278.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (279, 11, 3, 2, 4, 51, 2, 44, 'Pelipper', 'PELIPPER is a flying transporter that carries small POKéMON and eggs inside its massive bill. This POKéMON builds its nest on steep cliffs facing the sea.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/279.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (280, 14, 18, 11, null, 28, 36, 140, 'Ralts', 'RALTS senses the emotions of people using the horns on its head. This POKéMON rarely appears before people. But when it does, it draws closer if it senses that the person has a positive disposition.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/280.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (281, 14, 18, 11, null, 28, 36, 140, 'Kirlia', 'It is said that a KIRLIA that is exposed to the positive emotions of its TRAINER grows beautiful. This POKéMON controls psychokinetic powers with its highly developed brain.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/281.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (282, 14, 18, 11, null, 28, 36, 140, 'Gardevoir', 'GARDEVOIR has the ability to read the future. If it senses impending danger to its TRAINER, this POKéMON is said to unleash its psychokinetic energy at full power.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/282.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (283, 7, 11, 2, 3, 33, null, 44, 'Surskit', 'From the tips of its feet, SURSKIT secretes an oil that enables it to walk on water as if it were skating. This POKéMON feeds on microscopic organisms in ponds and lakes.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/283.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (284, 7, 3, 2, 3, 22, null, 127, 'Masquerain', 'MASQUERAIN intimidates enemies with the eyelike patterns on its antennas. This POKéMON flaps its four wings to freely fly in any direction - even sideways and backwards - as if it were a helicopter.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/284.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (285, 12, null, 6, 7, 27, 90, 95, 'Shroomish', 'SHROOMISH live in damp soil in the dark depths of forests. They are often found keeping still under fallen leaves. This POKéMON feeds on compost that is made up of fallen, rotted leaves.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/285.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (286, 12, 2, 6, 7, 27, 90, 101, 'Breloom', 'BRELOOM closes in on its foe with light and sprightly footwork, then throws punches with its stretchy arms. This POKéMON’s fighting technique puts boxers to shame.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/286.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (287, 1, null, 5, null, 54, null, null, 'Slakoth', 'SLAKOTH lolls around for over twenty hours every day. Because it moves so little, it does not need much food. This POKéMON’s sole daily meal consists of just three leaves.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/287.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (288, 1, null, 5, null, 72, null, null, 'Vigoroth', 'VIGOROTH is always itching and agitated to go on a wild rampage. It simply can’t tolerate sitting still for even a minute. This POKéMON’s stress level rises if it can’t be moving constantly.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/288.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (289, 1, null, 5, null, 54, null, null, 'Slaking', 'SLAKING spends all day lying down and lolling about. It eats grass growing within its reach. If it eats all the grass it can reach, this POKéMON reluctantly moves to another spot.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/289.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (290, 7, 5, 3, null, 14, null, 50, 'Nincada', 'NINCADA lives underground for many years in complete darkness. This POKéMON absorbs nutrients from the roots of trees. It stays motionless as it waits for evolution.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/290.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (291, 7, 3, 3, null, 3, null, 151, 'Ninjask', 'NINJASK moves around at such a high speed that it cannot be seen, even while its crying can be clearly heard. For that reason, this POKéMON was long believed to be invisible.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/291.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (292, 7, 8, 10, null, 25, null, null, 'Shedinja', 'A discarded bug shell that came to life. Peering into the crack on its back is said to steal one’s spirit.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/292.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (293, 1, null, 1, 5, 43, null, 155, 'Whismur', 'Normally, WHISMUR’s voice is very quiet - it is barely audible even if one is paying close attention. However, if this POKéMON senses danger, it starts crying at an earsplitting volume.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/293.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (294, 1, null, 1, 5, 43, null, 113, 'Loudred', 'LOUDRED’s bellowing can completely decimate a wood-frame house. It uses its voice to punish its foes. This POKéMON’s round ears serve as loudspeakers.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/294.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (295, 1, null, 1, 5, 43, null, 113, 'Exploud', 'EXPLOUD triggers earthquakes with the tremors it creates by bellowing. If this POKéMON violently inhales from the ports on its body, it’s a sign that it is preparing to let loose a huge bellow.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/295.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (296, 2, null, 8, null, 47, 62, 125, 'Makuhita', 'MAKUHITA is tenacious - it will keep getting up and attacking its foe however many times it is knocked down. Every time it gets back up, this POKéMON stores more energy in its body for evolving.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/296.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (297, 2, null, 8, null, 47, 62, 125, 'Hariyama', 'HARIYAMA practices its straight-arm slaps in any number of locations. One hit of this POKéMON’s powerful, openhanded, straight-arm punches could snap a telephone pole in two.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/297.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (298, 1, 18, 15, null, 47, 37, 157, 'Azurill', 'AZURILL spins its tail as if it were a lasso, then hurls it far. The momentum of the throw sends its body flying, too. Using this unique action, one of these POKéMON managed to hurl itself a record 33 feet.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/298.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (299, 6, null, 10, null, 5, 42, 159, 'Nosepass', 'NOSEPASS’s magnetic nose is always pointed to the north. If two of these POKéMON meet, they cannot turn their faces to each other when they are close because their magnetic noses repel one another.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/299.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (300, 1, null, 5, 6, 56, 96, 147, 'Skitty', 'SKITTY has the habit of becoming fascinated by moving objects and chasing them around. This POKéMON is known to chase after its own tail and become dizzy.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/300.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (301, 1, null, 5, 6, 56, 96, 147, 'Delcatty', 'DELCATTY prefers to live an unfettered existence in which it can do as it pleases at its own pace. Because this POKéMON eats and sleeps whenever it decides, its daily routines are completely random.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/301.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (302, 17, 8, 8, null, 51, 100, 158, 'Sableye', 'SABLEYE lead quiet lives deep inside caverns. They are feared, however, because these POKéMON are thought to steal the spirits of people when their eyes burn with a sinister glow in the darkness.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/302.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (303, 9, 18, 5, 6, 52, 22, 125, 'Mawile', 'MAWHILE’s huge jaws are actually steel horns that have been transformed. Its docile-looking face serves to lull its foe into letting down its guard. When the foe least expects it, MAWHILE chomps it with its gaping jaws.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/303.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (304, 9, 6, 1, null, 5, 69, 134, 'Aron', 'This POKéMON has a body of steel. To make its body, ARON feeds on iron ore that it digs from mountains. Occasionally, it causes major trouble by eating bridges and rails.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/304.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (305, 9, 6, 1, null, 5, 69, 134, 'Lairon', 'LAIRON tempers its steel body by drinking highly nutritious mineral springwater until it is bloated. This POKéMON makes its nest close to springs of delicious water.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/305.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (306, 9, 6, 1, null, 5, 69, 134, 'Aggron', 'AGGRON claims an entire mountain as its own territory. It mercilessly beats up anything that violates its environment. This POKéMON vigilantly patrols its territory at all times.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/306.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (307, 2, 14, 8, null, 74, null, 140, 'Meditite', 'MEDITITE undertakes rigorous mental training deep in the mountains. However, whenever it meditates, this POKéMON always loses its concentration and focus. As a result, its training never ends.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/307.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (308, 2, 14, 8, null, 74, null, 140, 'Medicham', 'It is said that through meditation, MEDICHAM heightens energy inside its body and sharpens its sixth sense. This POKéMON hides its presence by merging itself with fields and mountains.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/308.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (309, 13, null, 5, null, 9, 31, 58, 'Electrike', 'ELECTRIKE stores electricity in its long body hair. This POKéMON stimulates its leg muscles with electric charges. These jolts of power give its legs explosive acceleration performance.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/309.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (310, 13, null, 5, null, 9, 31, 58, 'Manectric', 'It rarely appears before people. It is said to nest where lightning has fallen.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/310.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (311, 13, null, 6, null, 57, null, 31, 'Plusle', 'PLUSLE always acts as a cheerleader for its partners. Whenever a teammate puts out a good effort in battle, this POKéMON shorts out its body to create the crackling noises of sparks to show its joy.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/311.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (312, 13, null, 6, null, 58, null, 10, 'Minun', 'MINUN is more concerned about cheering on its partners than its own safety. It shorts out the electricity in its body to create brilliant showers of sparks to cheer on its teammates.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/312.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (313, 7, null, 3, 8, 35, 68, 158, 'Volbeat', 'With the arrival of night, VOLBEAT emits light from its tail. It communicates with others by adjusting the intensity and flashing of its light. This POKéMON is attracted by the sweet aroma of ILLUMISE.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/313.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (314, 7, null, 3, 8, 12, 110, 158, 'Illumise', 'ILLUMISE attracts a swarm of VOLBEAT using a sweet fragrance. Once the VOLBEAT have gathered, this POKéMON leads the lit-up swarm in drawing geometric designs on the canvas of the night sky.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/314.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (315, 12, 4, 6, 7, 30, 38, 102, 'Roselia', 'ROSELIA shoots sharp thorns as projectiles at any opponent that tries to steal the flowers on its arms. The aroma of this POKéMON brings serenity to living things.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/315.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (316, 4, null, 11, null, 64, 60, 82, 'Gulpin', 'Virtually all of GULPIN’s body is its stomach. As a result, it can swallow something its own size. This POKéMON’s stomach contains a special fluid that digests anything.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/316.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (317, 4, null, 11, null, 64, 60, 82, 'Swalot', 'It swallows anything whole. It sweats toxic fluids from its follicles to douse foes.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/317.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (318, 11, 17, 12, null, 24, null, 3, 'Carvanha', 'CARVANHA’s strongly developed jaws and its sharply pointed fangs pack the destructive power to rip out boat hulls. Many boats have been attacked and sunk by this POKéMON.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/318.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (319, 11, 17, 12, null, 24, null, 3, 'Sharpedo', 'Nicknamed “the bully of the sea,” SHARPEDO is widely feared. Its cruel fangs grow back immediately if they snap off. Just one of these POKéMON can thoroughly tear apart a supertanker.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/319.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (320, 11, null, 5, 12, 41, 12, 46, 'Wailmer', 'It bounces playfully like a ball. The more seawater it swallows, the higher it bounces.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/320.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (321, 11, null, 5, 12, 41, 12, 46, 'Wailord', 'WAILORD is the largest of all identified POKéMON up to now. This giant POKéMON swims languorously in the vast open sea, eating massive amounts of food at once with its enormous mouth.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/321.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (322, 10, 5, 5, null, 12, 86, 20, 'Numel', 'NUMEL is extremely dull witted - it doesn’t notice being hit. However, it can’t stand hunger for even a second. This POKéMON’s body is a seething cauldron of boiling magma.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/322.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (323, 10, 5, 5, null, 40, 116, 83, 'Camerupt', 'CAMERUPT has a volcano inside its body. Magma of 18,000 degrees F courses through its body. Occasionally, the humps on this POKéMON’s back erupt, spewing the superheated magma.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/323.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (324, 10, null, 5, null, 73, 70, 75, 'Torkoal', 'TORKOAL digs through mountains in search of coal. If it finds some, it fills hollow spaces on its shell with the coal and burns it. If it is attacked, this POKéMON spouts thick black smoke to beat a retreat.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/324.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (325, 14, null, 5, null, 47, 20, 82, 'Spoink', 'SPOINK bounces around on its tail. The shock of its bouncing makes its heart pump. As a result, this POKéMON cannot afford to stop bouncing - if it stops, its heart will stop.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/325.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (326, 14, null, 5, null, 47, 20, 82, 'Grumpig', 'GRUMPIG uses the black pearls on its body to amplify its psychic power waves for gaining total control over its foe. When this POKéMON uses its special power, its snorting breath grows labored.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/326.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (327, 1, null, 5, 8, 20, 77, 126, 'Spinda', 'All the SPINDA that exist in the world are said to have utterly unique spot patterns. The shaky, tottering steps of this POKéMON give it the appearance of dancing.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/327.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (328, 5, null, 3, null, 52, 71, 125, 'Trapinch', 'Its big jaws crunch through boulders. Because its head is so big, it has a hard time getting back upright if it tips over onto its back.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/328.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (329, 5, 16, 3, null, 26, null, null, 'Vibrava', 'To make prey faint, VIBRAVA generates ultrasonic waves by vigorously making its two wings vibrate. This POKéMON’s ultrasonic waves are so powerful, they can bring on headaches in people.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/329.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (330, 5, 16, 3, null, 26, null, null, 'Flygon', 'FLYGON is nicknamed “the elemental  spirit of the desert.” Because its flapping wings whip up a cloud of sand, this POKéMON is always enveloped in a sandstorm while flying.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/330.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (331, 12, null, 7, 8, 8, null, 11, 'Cacnea', 'CACNEA lives in arid locations such as deserts. It releases a strong aroma from its flower to attract prey. When prey comes near, this POKéMON shoots sharp thorns from its body to bring the victim down.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/331.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (332, 12, 17, 7, 8, 8, null, 11, 'Cacturne', 'During the daytime, CACTURNE remains unmoving so that it does not lose any moisture to the harsh desert sun. This POKéMON becomes active at night when the temperature drops.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/332.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (333, 1, 3, 4, 14, 30, null, 13, 'Swablu', 'SWABLU has light and fluffy wings that are like cottony clouds. This POKéMON is not frightened of people. It lands on the heads of people and sits there like a cotton-fluff hat.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/333.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (334, 16, 3, 4, 14, 30, null, 13, 'Altaria', 'ALTARIA dances and wheels through the sky among billowing, cotton-like clouds. By singing melodies in its crystal-clear voice, this POKéMON makes its listeners experience dreamy wonderment.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/334.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (335, 1, null, 5, null, 17, null, 137, 'Zangoose', 'Memories of battling its arch-rival SEVIPER are etched into every cell of ZANGOOSE’s body. This POKéMON adroitly dodges attacks with incredible agility.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/335.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (336, 4, null, 5, 14, 61, null, 151, 'Seviper', 'SEVIPER shares a generations-long feud with ZANGOOSE. The scars on its body are evidence of vicious battles. This POKéMON attacks using its sword- edged tail.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/336.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (337, 6, 14, 10, null, 26, null, null, 'Lunatone', 'LUNATONE was discovered at a location where a meteorite fell. As a result, some people theorize that this POKéMON came from space. However, no one has been able to prove this theory so far.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/337.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (338, 6, 14, 10, null, 26, null, null, 'Solrock', 'SOLROCK is a new species of POKéMON that is said to have fallen from space. It floats in air and moves silently. In battle, this POKéMON releases intensely bright light.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/338.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (339, 11, 5, 12, null, 12, 107, 93, 'Barboach', 'BARBOACH’s sensitive whiskers serve as a superb radar system. This POKéMON hides in mud, leaving only its two whiskers exposed while it waits for prey to come along.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/339.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (340, 11, 5, 12, null, 12, 107, 93, 'Whiscash', 'WHISCASH is extremely territorial. Just one of these POKéMON will claim a large pond as its exclusive territory. If a foe approaches it, it thrashes about and triggers a massive earthquake.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/340.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (341, 11, null, 2, 9, 52, 75, 91, 'Corphish', 'CORPHISH were originally foreign POKéMON that were imported as pets. They eventually turned up in the wild. This POKéMON is very hardy and has greatly increased its population.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/341.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (342, 11, 17, 2, 9, 52, 75, 91, 'Crawdaunt', 'CRAWDAUNT has an extremely violent nature that compels it to challenge other living things to battle. Other life-forms refuse to live in ponds inhabited by this POKéMON, making them desolate places.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/342.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (343, 5, 14, 10, null, 26, null, null, 'Baltoy', 'BALTOY moves while spinning around on its one foot. Primitive wall paintings depicting this POKéMON living among people were discovered in some ancient ruins.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/343.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (344, 5, 14, 10, null, 26, null, null, 'Claydol', 'CLAYDOL are said to be dolls of mud made by primitive humans and brought to life by exposure to a mysterious ray. This POKéMON moves about while levitating.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/344.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (345, 6, 12, 9, null, 21, null, 114, 'Lileep', 'LILEEP became extinct approximately a hundred million years ago. This ancient POKéMON attaches itself to a rock on the seafloor and catches approaching prey using tentacles  shaped like flower petals.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/345.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (346, 6, 12, 9, null, 21, null, 114, 'Cradily', 'CRADILY roams around the ocean floor in search of food. This POKéMON freely extends its tree trunk-like neck and captures unwary prey using its eight tentacles.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/346.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (347, 6, 7, 9, null, 4, null, 33, 'Anorith', 'ANORITH was regenerated from a prehistoric fossil. This primitive POKéMON once lived in warm seas. It grips its prey firmly between its two large claws.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/347.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (348, 6, 7, 9, null, 4, null, 33, 'Armaldo', 'ARMALDO’s tough armor makes all attacks bounce off. This POKéMON’s two enormous claws can be freely extended or contracted. They have the power to punch right through a steel slab.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/348.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (349, 11, null, 2, 14, 33, 12, 91, 'Feebas', 'FEEBAS’s fins are ragged and tattered from the start of its life. Because of its shoddy appearance, this POKéMON is largely ignored. It is capable of living in both the sea and in rivers.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/349.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (350, 11, null, 2, 14, 63, 172, 56, 'Milotic', 'MILOTIC is said to be the most beautiful of all the POKéMON. It has the power to becalm such emotions as anger and hostility to quell bitter feuding.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/350.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (351, 1, null, 6, 11, 59, null, null, 'Castform', 'CASTFORM’s appearance changes with the weather. This POKéMON gained the ability to use the vast power of nature to protect its tiny body.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/351.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (352, 1, null, 5, null, 16, null, 168, 'Kecleon', 'KECLEON is capable of changing its body colors at will to blend in with its surroundings. There is one exception - this POKéMON can’t change the zigzag pattern on its belly.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/352.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (353, 8, null, 11, null, 15, 119, 130, 'Shuppet', 'SHUPPET is attracted by feelings of jealousy and vindictiveness. If someone develops strong feelings of vengeance, this POKéMON will appear in a swarm and line up beneath the eaves of that person’s home.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/353.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (354, 8, null, 11, null, 15, 119, 130, 'Banette', 'BANETTE generates energy for laying strong curses by sticking pins into its own body. This POKéMON was originally a pitiful plush doll that was thrown away.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/354.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (355, 8, null, 11, null, 26, null, 119, 'Duskull', 'DUSKULL can pass through any wall no matter how thick it may be. Once this POKéMON chooses a target, it will doggedly pursue the intended victim until the break of dawn.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/355.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (356, 8, null, 11, null, 46, null, 119, 'Dusclops', 'DUSCLOPS’s body is completely hollow - there is nothing at all inside. It is said that its body is like a black hole. This POKéMON will absorb anything into its body, but nothing will ever come back out.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/356.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (357, 12, 3, 1, 7, 34, 94, 139, 'Tropius', 'The bunches of fruit around TROPIUS’s neck are very popular with children. This POKéMON loves fruit, and eats it continuously. Apparently, its love for fruit resulted in its own outgrowth of fruit.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/357.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (358, 14, null, 11, null, 26, null, null, 'Chimecho', 'Emitting ultrasonic cries, it floats on winds to travel great distances.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/358.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (359, 17, null, 5, null, 46, 105, 154, 'Absol', 'Every time ABSOL appears before people, it is followed by a disaster such as an earthquake or a tidal wave. As a result, it came to be known as the disaster POKéMON.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/359.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (360, 14, null, 15, null, 23, null, 140, 'Wynaut', 'WYNAUT can always be seen with a big, happy smile on its face. Look at its tail to determine if it is angry. When angered, this POKéMON will be slapping the ground with its tail.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/360.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (361, 15, null, 6, 10, 39, 115, 141, 'Snorunt', 'SNORUNT live in regions with heavy snowfall. In seasons without snow, such as spring and summer, this POKéMON steals away to live quietly among stalactites and stalagmites deep in caverns.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/361.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (362, 15, null, 6, 10, 39, 115, 141, 'Glalie', 'GLALIE has a body made of rock, which it hardens with an armor of ice. This POKéMON has the ability to freeze moisture in the atmosphere into any shape it desires.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/362.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (363, 15, 11, 2, 5, 47, 115, 12, 'Spheal', 'SPHEAL is much faster rolling than  walking to get around. When groups of this POKéMON eat, they all clap at once to show their pleasure. Because of this, their mealtimes are noisy.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/363.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (364, 15, 11, 2, 5, 47, 115, 12, 'Sealeo', 'SEALEO has the habit of always juggling on the tip of its nose anything it sees for the first time. This POKéMON occasionally entertains itself by balancing and rolling a SPHEAL on its nose.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/364.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (365, 15, 11, 2, 5, 47, 115, 12, 'Walrein', 'WALREIN’s two massively developed tusks can totally shatter blocks of ice weighing ten tons with one blow. This POKéMON’s thick coat of blubber insulates it from subzero temperatures.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/365.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (366, 11, null, 2, null, 75, null, 155, 'Clamperl', 'CLAMPERL’s sturdy shell is not only good for protection - it is also used for clamping and catching prey. A fully grown CLAMPERL’s shell will be scored with nicks and scratches all over.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/366.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (367, 11, null, 2, null, 33, null, 41, 'Huntail', 'It lives deep in the pitch-dark sea. It attracts prey by moving its tail in mimicry of a small animal.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/367.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (368, 11, null, 2, null, 33, null, 93, 'Gorebyss', 'GOREBYSS lives in the southern seas at extreme depths. Its body is built to withstand the enormous pressure of water at incredible depths. Because of this, this POKéMON’s body is unharmed by ordinary attacks.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/368.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (369, 11, 6, 2, 12, 33, 69, 5, 'Relicanth', 'It has remained unchanged for 100 million years. It was discovered during a deep-sea exploration.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/369.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (370, 11, null, 12, null, 33, null, 93, 'Luvdisc', 'LUVDISC live in shallow seas in the tropics. This heart-shaped POKéMON earned its name by swimming after loving couples it spotted in the ocean’s waves.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/370.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (371, 16, null, 14, null, 69, null, 125, 'Bagon', 'BAGON has a dream of one day soaring in the sky. In doomed efforts to fly, this POKéMON hurls itself off cliffs. As a result of its dives, its head has  grown tough and as hard as tempered steel.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/371.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (372, 16, null, 14, null, 69, null, 142, 'Shelgon', 'Inside SHELGON’s armor-like shell, cells are in the midst of transformation to create an entirely new body. This POKéMON’s shell is extremely heavy, making its movements sluggish.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/372.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (373, 16, 3, 14, null, 22, null, 153, 'Salamence', 'SALAMENCE came about as a result of a strong, long-held dream of growing wings. It is said that this powerful desire triggered a sudden mutation in this POKéMON’s cells, causing it to sprout its magnificent wings.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/373.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (374, 9, 14, 10, null, 29, null, 135, 'Beldum', 'Its cells are all magnetic, and it communicates with others by using magnetic pulses.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/374.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (375, 9, 14, 10, null, 29, null, 135, 'Metang', 'When two BELDUM fuse together, METANG is formed. The brains of the BELDUM are joined by a magnetic nervous system. By linking its brains magnetically, this POKéMON generates strong psychokinetic power.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/375.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (376, 9, 14, 10, null, 29, null, 135, 'Metagross', 'METAGROSS has four brains in total. Combined, the four brains can breeze through difficult calculations faster than a supercomputer. This POKéMON can float in the air by tucking in its four legs.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/376.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (377, 6, null, 15, null, 29, null, 5, 'Regirock', 'REGIROCK was sealed away by people long ago. If this POKéMON’s body is damaged in battle, it is said to seek out suitable rocks on its own to repair itself.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/377.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (378, 15, null, 15, null, 29, null, 115, 'Regice', 'REGICE’s body was made during an ice age. The deep-frozen body can’t be melted, even by fire. This POKéMON controls frigid air of minus 328 degrees F.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/378.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (379, 9, null, 15, null, 29, null, 135, 'Registeel', 'REGISTEEL has a body that is harder than any kind of metal. Its body is apparently hollow. No one has any idea what this POKéMON eats.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/379.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (380, 16, 14, 15, null, 26, null, null, 'Latias', 'LATIAS is highly sensitive to the emotions of people. If it senses any hostility, this POKéMON ruffles the feathers all over its body and cries shrilly to intimidate the foe.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/380.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (381, 16, 14, 15, null, 26, null, null, 'Latios', 'LATIOS has the ability to make its foe see an image of what it has seen or imagines in its head. This POKéMON is intelligent and understands human speech.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/381.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (382, 11, null, 15, null, 2, null, null, 'Kyogre', 'KYOGRE has the power to create massive rain clouds that cover the entire sky and bring about torrential downpours. This POKéMON saved people who were suffering from droughts.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/382.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (383, 5, null, 15, null, 70, null, null, 'Groudon', 'GROUDON has long been described in  mythology as the POKéMON that raised lands and expanded continents. This POKéMON took to sleep after a cataclysmic battle with KYOGRE.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/383.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (384, 16, 3, 15, null, 76, null, null, 'Rayquaza', 'RAYQUAZA lived for hundreds of millions of years in the earth’s ozone layer,  never descending to the ground. This POKéMON appears to feed on water and particles in the atmosphere.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/384.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (385, 9, 14, 15, null, 32, null, null, 'Jirachi', 'A legend states that JIRACHI will make true any wish that is written on notes attached to its head when it awakens. If this POKéMON senses danger, it will fight without awakening.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/385.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (386, 14, null, 15, null, 46, null, null, 'Deoxys-normal', 'The DNA of a space virus underwent a sudden mutation upon exposure to a laser beam and resulted in DEOXYS. The crystalline organ on this POKéMON’s chest appears to be its brain.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/386.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (387, 12, null, 1, 7, 65, null, 75, 'Turtwig', 'Made from soil, the shell on its back hardens when it drinks water. It lives along lakes.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/387.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (388, 12, null, 1, 7, 65, null, 75, 'Grotle', 'It lives along water in forests. In the daytime, it leaves the forest to sunbathe its treed shell.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/388.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (389, 12, 5, 1, 7, 65, null, 75, 'Torterra', 'Small Pokémon occasionally gather on its unmoving back to begin building their nests.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/389.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (390, 10, null, 5, 8, 66, null, 89, 'Chimchar', 'It agilely scales sheer cliffs to live atop craggy mountains. Its fire is put out when it sleeps.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/390.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (391, 10, 2, 5, 8, 66, null, 89, 'Monferno', 'To intimidate attackers, it stretches the fire on its tail to make itself appear bigger.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/391.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (392, 10, 2, 5, 8, 66, null, 89, 'Infernape', 'It uses a special kind of martial arts involving all its limbs. Its fire never goes out.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/392.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (393, 11, null, 2, 5, 67, null, 128, 'Piplup', 'Because it is very proud, it hates accepting food from people. Its thick down guards it from cold.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/393.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (394, 11, null, 2, 5, 67, null, 128, 'Prinplup', 'It lives alone, away from others. Apparently, every one of them believes it is the most important.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/394.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (395, 11, 9, 2, 5, 67, null, 128, 'Empoleon', 'The three horns that extend from its beak attest to its power. The leader has the biggest horns.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/395.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (396, 1, 3, 4, null, 51, null, 120, 'Starly', 'They flock in great numbers. Though small, they flap their wings with great power.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/396.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (397, 1, 3, 4, null, 22, null, 120, 'Staravia', 'It flies around forests and fields in search of bug Pokémon. It stays within a huge flock.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/397.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (398, 1, 3, 4, null, 22, null, 120, 'Staraptor', 'It has a savage nature. It will courageously challenge foes that are much larger.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/398.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (399, 1, null, 2, 5, 86, 109, 141, 'Bidoof', 'With nerves of steel, nothing can perturb it. It is more agile and active than it appears.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/399.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (400, 1, 11, 2, 5, 86, 109, 141, 'Bibarel', 'It makes its nest by damming streams with bark and mud. It is known as an industrious worker.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/400.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (401, 7, null, 3, null, 61, null, 50, 'Kricketot', 'It shakes its head back to front, causing its antennae to hit each other and sound like a xylophone.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/401.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (402, 7, null, 3, null, 68, null, 101, 'Kricketune', 'It crosses its knifelike arms in front of its chest when it cries. It can compose melodies ad lib.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/402.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (403, 13, null, 5, null, 79, 22, 62, 'Shinx', 'All of its fur dazzles if danger is sensed. It flees while the foe is momentarily blinded.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/403.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (404, 13, null, 5, null, 79, 22, 62, 'Luxio', 'Its claws loose electricity with enough amperage to cause fainting. They live in small groups.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/404.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (405, 13, null, 5, null, 79, 22, 62, 'Luxray', 'It has eyes that can see through anything. It spots and captures prey hiding behind objects.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/405.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (406, 12, 4, 15, null, 30, 38, 102, 'Budew', 'Over the winter, it closes its bud and endures the cold. In spring, the bud opens and releases pollen.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/406.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (407, 12, 4, 6, 7, 30, 38, 101, 'Roserade', 'It attracts prey with a sweet aroma, then downs it with thorny whips hidden in its arms.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/407.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (408, 6, null, 1, null, 104, null, 125, 'Cranidos', 'It lived in jungles around 100 million years ago. Its skull is as hard as iron.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/408.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (409, 6, null, 1, null, 104, null, 125, 'Rampardos', 'Its powerful head butt has enough power to shatter even the most durable things upon impact.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/409.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (410, 6, 9, 1, null, 5, null, 43, 'Shieldon', 'A Pokémon that lived in jungles around 100 million years ago. Its facial hide is extremely hard.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/410.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (411, 6, 9, 1, null, 5, null, 43, 'Bastiodon', 'Any frontal attack is repulsed. It is a docile Pokémon that feeds on grass and berries.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/411.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (412, 7, null, 3, null, 61, null, 142, 'Burmy', 'To shelter itself from cold, wintry winds, it covers itself with a cloak made of twigs and leaves.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/412.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (413, 7, 12, 3, null, 107, null, 142, 'Wormadam-plant', 'When BURMY evolved, its cloak became a part of this Pokémon’s body. The cloak is never shed.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/413.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (414, 7, 3, 3, null, 68, null, 110, 'Mothim', 'It loves the honey of flowers and steals honey collected by COMBEE.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/414.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (415, 7, 3, 3, null, 118, null, 55, 'Combee', 'A Pokémon formed by three others. It busily carries sweet floral honey to VESPIQUEN.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/415.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (416, 7, 3, 3, null, 46, null, 127, 'Vespiquen', 'Its abdomen is a honeycomb for grubs. It raises its grubs on honey collected by COMBEE.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/416.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (417, 13, null, 5, 6, 50, 53, 10, 'Pachirisu', 'It makes fur balls that crackle with static electricity. It stores them with berries in tree holes.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/417.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (418, 11, null, 2, 5, 33, null, 41, 'Buizel', 'It has a flotation sac that is like an inflatable collar. It floats on water with its head out.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/418.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (419, 11, null, 2, 5, 33, null, 41, 'Floatzel', 'It floats using its well-developed flotation sac. It assists in the rescues of drowning people.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/419.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (420, 12, null, 6, 7, 34, null, null, 'Cherubi', 'The small ball holds the nutrients needed for evolution. Apparently, it is very sweet and tasty.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/420.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (421, 12, null, 6, 7, 122, null, null, 'Cherrim', 'It blooms during times of strong sunlight. It tries to make up for everything it endured as a bud.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/421.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (422, 11, null, 2, 11, 60, 114, 159, 'Shellos', 'Its shape and coloration vary, depending on its habitat.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/422.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (423, 11, 5, 2, 11, 60, 114, 159, 'Gastrodon', 'It has a pliable body without any bones. If any part of its body is torn off, it grows right back.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/423.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (424, 1, null, 5, null, 101, 53, 92, 'Ambipom', 'To eat, it deftly shucks nuts with its two tails. It rarely uses its arms now.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/424.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (425, 8, 3, 11, null, 106, 84, 138, 'Drifloon', 'A Pokémon formed by the spirits of people and Pokémon. It loves damp, humid seasons.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/425.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (426, 8, 3, 11, null, 106, 84, 138, 'Drifblim', 'It’s drowzy in daytime, but flies off in the evening in big groups. No one knows where they go.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/426.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (427, 1, null, 5, 8, 50, 103, 7, 'Buneary', 'It slams foes by sharply uncoiling its rolled ears. It stings enough to make a grown-up cry in pain.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/427.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (428, 1, null, 5, 8, 56, 103, 7, 'Lopunny', 'An extremely cautious Pokémon. It cloaks its body with its fluffy ear fur when it senses danger.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/428.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (429, 8, null, 11, null, 26, null, null, 'Mismagius', 'Its cries sound like incantations. Those hearing it are tormented by headaches and hallucinations.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/429.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (430, 17, 3, 4, null, 15, 105, 153, 'Honchkrow', 'Becoming active at night, it is known to swarm with numerous MURKROW in tow.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/430.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (431, 1, null, 5, null, 7, 20, 51, 'Glameow', 'It claws if displeased and purrs when affectionate. Its fickleness is very popular among some.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/431.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (432, 1, null, 5, null, 47, 20, 128, 'Purugly', 'It is a brazen brute that barges its way into another Pokémon’s nest and claims it as its own.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/432.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (433, 14, null, 15, null, 26, null, null, 'Chingling', 'It emits cries by agitating an orb at the back of its throat. It moves with flouncing hops.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/433.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (434, 4, 17, 5, null, 1, 106, 51, 'Stunky', 'It protects itself by spraying a noxious fluid from its rear. The stench lingers for 24 hours.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/434.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (435, 4, 17, 5, null, 1, 106, 51, 'Skuntank', 'It sprays a vile-smelling fluid from the tip of its tail to attack. Its range is over 160 feet.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/435.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (436, 9, 14, 10, null, 26, 85, 134, 'Bronzor', 'Implements shaped like it were discovered in ancient tombs. It is unknown if they are related.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/436.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (437, 9, 14, 10, null, 26, 85, 134, 'Bronzong', 'One caused a news sensation when it was dug up at a construction site after a 2,000-year sleep.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/437.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (438, 6, null, 15, null, 5, 69, 155, 'Bonsly', 'It prefers an arid atmosphere. It leaks water that looks like tears when adjusting its moisture level.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/438.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (439, 14, 18, 15, null, 43, 111, 101, 'Mime-jr', 'It habitually mimics foes. Once mimicked, the foe cannot take its eyes off this Pokémon.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/439.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (440, 1, null, 15, null, 30, 32, 132, 'Happiny', 'It loves round white things. It carries an egg-shaped rock in imitation of CHANSEY.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/440.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (441, 1, 3, 4, null, 51, 77, 145, 'Chatot', 'It can learn and speak human words. If they gather, they all learn the same saying.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/441.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (442, 8, 17, 11, null, 46, null, 151, 'Spiritomb', 'A Pokémon that was formed by 108 spirits. It is bound to a fissure in an odd keystone.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/442.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (443, 16, 5, 1, 14, 8, null, 24, 'Gible', 'It nests in small, horizontal holes in cave walls. It pounces to catch prey that stray too close.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/443.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (444, 16, 5, 1, 14, 8, null, 24, 'Gabite', 'There is a long-held belief that medicine made from its scales will heal even incurable illnesses.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/444.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (445, 16, 5, 1, 14, 8, null, 24, 'Garchomp', 'When it folds up its body and extends its wings, it looks like a jet plane. It flies at sonic speed.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/445.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (446, 1, null, 15, null, 53, 47, 82, 'Munchlax', 'It wolfs down its weight in food once a day, swallowing food whole with almost no chewing.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/446.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (447, 2, null, 15, null, 80, 39, 158, 'Riolu', 'The aura that emanates from its body intensifies to alert others if it is afraid or sad.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/447.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (448, 2, 9, 5, 8, 80, 39, 154, 'Lucario', 'It has the ability to sense the auras of all things. It understands human speech.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/448.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (449, 5, null, 5, null, 45, null, 159, 'Hippopotas', 'It lives in arid places. Instead of perspiration, it expels grainy sand from its body.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/449.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (450, 5, null, 5, null, 45, null, 159, 'Hippowdon', 'It blasts internally stored sand from ports on its body to create a towering twister for attack.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/450.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (451, 4, 7, 3, 9, 4, 97, 51, 'Skorupi', 'It grips prey with its tail claws and injects poison. It tenaciously hangs on until the poison takes.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/451.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (452, 4, 17, 3, 9, 4, 97, 51, 'Drapion', 'It has the power in its clawed arms to make scrap of a car. The tips of its claws release poison.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/452.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (453, 4, 2, 8, null, 107, 87, 143, 'Croagunk', 'Its cheeks hold poison sacs. It tries to catch foes off guard to jab them with toxic fingers.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/453.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (454, 4, 2, 8, null, 107, 87, 143, 'Toxicroak', 'Its knuckle claws secrete a toxin so vile that even a scratch could prove fatal.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/454.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (455, 12, null, 7, null, 26, null, null, 'Carnivine', 'It attracts prey with its sweet- smelling saliva, then chomps down. It takes a whole day to eat prey.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/455.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (456, 11, null, 12, null, 33, 114, 41, 'Finneon', 'After long exposure to sunlight, the patterns on its tail fins shine vividly when darkness arrives.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/456.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (457, 11, null, 12, null, 33, 114, 41, 'Lumineon', 'It lives on the deep-sea floor. It attracts prey by flashing the patterns on its four tail fins.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/457.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (458, 11, 3, 15, null, 33, 11, 41, 'Mantyke', 'A friendly Pokémon that captures the subtle flows of seawater using its two antennae.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/458.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (459, 12, 15, 1, 7, 117, null, 43, 'Snover', 'It lives on snowy mountains. Having had little contact with humans, it is boldly inquisitive.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/459.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (460, 12, 15, 1, 7, 117, null, 43, 'Abomasnow', 'It whips up blizzards in mountains that are always buried in snow. It is the abominable snowman.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/460.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (461, 17, 15, 5, null, 46, null, 124, 'Weavile', 'They live in cold regions, forming groups of four or five that hunt prey with impressive coordination.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/461.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (462, 13, 9, 10, null, 42, 5, 148, 'Magnezone', 'It evolved from exposure to a special magnetic field. Three units generate magnetism.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/462.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (463, 1, null, 1, null, 20, 12, 13, 'Lickilicky', 'It wraps things with its extensible tongue. Getting too close to it will leave you soaked with drool.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/463.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (464, 5, 6, 1, 5, 31, 116, 120, 'Rhyperior', 'It puts rocks in holes in its palms and uses its muscles to shoot them. GEODUDE are shot at rare times.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/464.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (465, 12, null, 7, null, 34, 102, 144, 'Tangrowth', 'It ensnares prey by extending arms made of vines. Losing arms to predators does not trouble it.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/465.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (466, 13, null, 8, null, 78, null, 72, 'Electivire', 'It pushes the tips of its two tails against the foe, then lets loose with over 20,000 volts of power.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/466.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (467, 10, null, 8, null, 49, null, 72, 'Magmortar', 'It blasts fireballs of over 3,600 degrees F from the ends of its arms. It lives in volcanic craters.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/467.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (468, 18, 3, 4, 6, 55, 32, 105, 'Togekiss', 'It will never appear where there is strife. Its sightings have become rare recently.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/468.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (469, 7, 3, 3, null, 3, 110, 119, 'Yanmega', 'By churning its wings, it creates shock waves that inflict critical internal injuries to foes.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/469.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (470, 12, null, 5, null, 102, null, 34, 'Leafeon', 'Just like a plant, it uses photosynthesis. As a result, it is always enveloped in clear air.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/470.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (471, 15, null, 5, null, 81, null, 115, 'Glaceon', 'As a protective technique, it can completely freeze its fur to make its hairs stand like needles.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/471.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (472, 5, 3, 3, null, 52, 8, 90, 'Gliscor', 'It observes prey while hanging inverted from branches. When the chance presents itself, it swoops!', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/472.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (473, 15, 5, 5, null, 12, 81, 47, 'Mamoswine', 'Its impressive tusks are made of ice. The population thinned when it turned warm after the ice age.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/473.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (474, 1, null, 10, null, 91, 88, 148, 'Porygon-z', 'Additional software was installed to make it a better Pokémon. It began acting oddly, however.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/474.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (475, 14, 2, 11, null, 80, null, 154, 'Gallade', 'A master of courtesy and swordsmanship, it fights using extending swords on its elbows.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/475.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (476, 6, 9, 10, null, 5, 42, 159, 'Probopass', 'It freely controls three small units called Mini-Noses using magnetic force.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/476.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (477, 8, null, 11, null, 46, null, 119, 'Dusknoir', 'The antenna on its head captures radio waves from the world of spirits that command it to take people there.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/477.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (478, 15, 8, 6, 10, 81, null, 130, 'Froslass', 'It freezes foes with an icy breath nearly -60 degrees F. What seems to be its body is actually hollow.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/478.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (479, 13, 8, 11, null, 26, null, null, 'Rotom', 'Its body is composed of plasma. It is known to infiltrate electronic devices and wreak havoc.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/479.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (480, 14, null, 15, null, 26, null, null, 'Uxie', 'Known as “The Being of Knowledge.” It is said that it can wipe out the memory of those who see its eyes.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/480.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (481, 14, null, 15, null, 26, null, null, 'Mesprit', 'Known as “The Being of Emotion.” It taught humans the nobility of sorrow, pain, and joy.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/481.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (482, 14, null, 15, null, 26, null, null, 'Azelf', 'It is thought that Uxie, Mesprit, and Azelf all came from the same egg.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/482.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (483, 9, 16, 15, null, 46, null, 140, 'Dialga', 'It has the power to control time. It appears in Sinnoh-region myths as an ancient deity.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/483.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (484, 11, 16, 15, null, 46, null, 140, 'Palkia', 'It has the ability to distort space. It is described as a deity in Sinnoh-region mythology.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/484.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (485, 10, 9, 15, null, 18, null, 49, 'Heatran', 'It dwells in volcanic caves. It digs in with its cross-shaped feet to crawl on ceilings and walls.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/485.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (486, 1, null, 15, null, 112, null, null, 'Regigigas', 'There is an enduring legend that states this Pokémon towed continents with ropes.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/486.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (487, 8, 16, 15, null, 46, null, 140, 'Giratina-altered', 'A Pokémon that is said to live in a world on the reverse side of ours. It appears in an ancient cemetery.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/487.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (488, 14, null, 15, null, 26, null, null, 'Cresselia', 'Shiny particles are released from its wings like a veil. It is said to represent the crescent moon.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/488.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (489, 11, null, 2, 6, 93, null, null, 'Phione', 'A Pokémon that lives in warm seas. It inflates the flotation sac on its head to drift and search for food.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/489.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (490, 11, null, 2, 6, 93, null, null, 'Manaphy', 'Born on a cold seafloor, it will swim great distances to return to its birthplace.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/490.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (491, 17, null, 15, null, 123, null, null, 'Darkrai', 'It can lull people to sleep and make them dream. It is active during nights of the new moon.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/491.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (492, 12, null, 15, null, 30, null, null, 'Shaymin-land', 'It lives in flower patches and avoids detection by curling up to look like a flowering plant.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/492.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (493, 1, null, 15, null, 121, null, null, 'Arceus', 'It is told in mythology that this Pokémon was born before the universe even existed.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/493.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (494, 14, 10, 15, null, 162, null, null, 'Victini', 'This Pokémon brings victory. It is said that Trainers with Victini always win, regardless of the type of encounter.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/494.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (495, 12, null, 5, 7, 65, null, 126, 'Snivy', 'It is very intelligent and calm. Being exposed to lots of sunlight makes its movements swifter.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/495.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (496, 12, null, 5, 7, 65, null, 126, 'Servine', 'It moves along the ground as if sliding. Its swift movements befuddle its foes, and it then attacks with a vine whip.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/496.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (497, 12, null, 5, 7, 65, null, 126, 'Serperior', 'It can stop its opponents’ movements with just a glare. It takes in solar energy and boosts it internally.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/497.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (498, 10, null, 5, null, 66, null, 47, 'Tepig', 'It can deftly dodge its foe’s attacks while shooting fireballs from its nose. It roasts berries before it eats them.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/498.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (499, 10, 2, 5, null, 66, null, 47, 'Pignite', 'When its internal fire flares up, its movements grow sharper and faster. When in trouble, it emits smoke.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/499.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (500, 10, 2, 5, null, 66, null, 120, 'Emboar', 'It can throw a fire punch by setting its fists on fire with its fiery chin. It cares deeply about its friends.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/500.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (501, 11, null, 5, null, 67, null, 75, 'Oshawott', 'It fights using the scalchop on its stomach. In response to an attack, it retaliates immediately by slashing.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/501.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (502, 11, null, 5, null, 67, null, 75, 'Dewott', 'Strict training is how it learns its flowing double-scalchop technique.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/502.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (503, 11, null, 5, null, 67, null, 75, 'Samurott', 'One swing of the sword incorporated in its armor can fell an opponent. A simple glare from one of them quiets everybody.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/503.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (504, 1, null, 5, null, 50, 51, 148, 'Patrat', 'Using food stored in cheek pouches, they can keep watch for days. They use their tails to communicate with others.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/504.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (505, 1, null, 5, null, 35, 51, 148, 'Watchog', 'When they see an enemy, their tails stand high, and they spit the seeds of berries stored in their cheek pouches.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/505.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (506, 1, null, 5, null, 72, 53, 50, 'Lillipup', 'It faces strong opponents with great courage. But, when at a disadvantage in a fight, this intelligent Pokémon flees.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/506.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (507, 1, null, 5, null, 22, 146, 113, 'Herdier', 'It has black, cape-like fur that is very hard and decreases the amount of damage it receives.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/507.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (508, 1, null, 5, null, 22, 146, 113, 'Stoutland', 'It rescues people stranded by blizzards in the mountains. Its shaggy fur shields it from the cold.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/508.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (509, 17, null, 5, null, 7, 84, 158, 'Purrloin', 'They steal from people for fun, but their victims can’t help but forgive them. Their deceptively cute act is perfect.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/509.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (510, 17, null, 5, null, 7, 84, 158, 'Liepard', 'These Pokémon vanish and appear unexpectedly. Many Trainers are drawn to their beautiful form and fur.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/510.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (511, 12, null, 5, null, 82, null, 65, 'Pansage', 'This Pokémon dwells deep in the forest. Eating a leaf from its head whisks weariness away as if by magic.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/511.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (512, 12, null, 5, null, 82, null, 65, 'Simisage', 'Ill tempered, it fights by swinging its barbed tail around wildly. The leaf growing on its head is very bitter.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/512.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (513, 10, null, 5, null, 82, null, 66, 'Pansear', 'When it is angered, the temperature of its head tuft reaches 600° F. It uses its tuft to roast berries.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/513.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (514, 10, null, 5, null, 82, null, 66, 'Simisear', 'It loves sweets because they become energy for the fire burning inside its body.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/514.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (515, 11, null, 5, null, 82, null, 67, 'Panpour', 'The water stored inside the tuft on its head is full of nutrients. Plants that receive its water grow large.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/515.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (516, 11, null, 5, null, 82, null, 67, 'Simipour', 'The tuft on its head holds water. When the level runs low, it replenishes the tuft by siphoning up water with its tail.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/516.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (517, 14, null, 5, null, 108, 28, 140, 'Munna', 'Munna always float in the air. People whose dreams are eaten by them forget what the dreams had been about.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/517.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (518, 14, null, 5, null, 108, 28, 140, 'Musharna', 'The mist emanating from their foreheads is packed with the dreams of people and Pokémon.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/518.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (519, 1, 3, 4, null, 145, 105, 79, 'Pidove', 'Each follows its Trainer’s orders as best it can, but they sometimes fail to understand complicated commands.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/519.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (520, 1, 3, 4, null, 145, 105, 79, 'Tranquill', 'It can return to its Trainer’s location regardless of the distance separating them.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/520.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (521, 1, 3, 4, null, 145, 105, 79, 'Unfezant', 'Males swing their head plumage to threaten opponents. The females’ flying abilities surpass those of the males.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/521.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (522, 13, null, 5, null, 31, 78, 157, 'Blitzle', 'Its mane shines when it discharges electricity. They use their flashing manes to communicate with one another.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/522.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (523, 13, null, 5, null, 31, 78, 157, 'Zebstrika', 'They have lightning-like movements. When Zebstrika run at full speed, the sound of thunder reverberates.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/523.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (524, 6, null, 10, null, 5, 133, 159, 'Roggenrola', 'Its ear is hexagonal in shape. Compressed underground, its body is as hard as steel.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/524.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (525, 6, null, 10, null, 5, 133, 159, 'Boldore', 'When it overflows with power, the orange crystal on its body glows. It looks for underground water in caves.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/525.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (526, 6, null, 10, null, 5, 45, 159, 'Gigalith', 'Compressing the energy from its internal core lets it fire off an attack capable of blowing away a mountain.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/526.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (527, 14, 3, 4, 5, 109, 103, 86, 'Woobat', 'Its habitat is dark forests and caves. It emits ultrasonic waves from its nose to learn about its surroundings.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/527.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (528, 14, 3, 4, 5, 109, 103, 86, 'Swoobat', 'It emits sound waves of various frequencies from its nose, including some powerful enough to destroy rocks.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/528.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (529, 5, null, 5, null, 146, 159, 104, 'Drilbur', 'It can dig through the ground at a speed of 30 mph. It could give a car running aboveground a good race.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/529.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (530, 5, 9, 5, null, 146, 159, 104, 'Excadrill', 'It can help in tunnel construction. Its drill has evolved into steel strong enough to bore through iron plates.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/530.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (531, 1, null, 6, null, 131, 144, 103, 'Audino', 'It touches others with the feelers on its ears, using the sound of their heartbeats to tell how they are feeling.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/531.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (532, 2, null, 8, null, 62, 125, 89, 'Timburr', 'It fights by swinging a piece of lumber around. It is close to evolving when it can handle the lumber without difficulty.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/532.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (533, 2, null, 8, null, 62, 125, 89, 'Gurdurr', 'This Pokémon is so muscular and strongly built that even a group of wrestlers could not make it budge an inch.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/533.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (534, 2, null, 8, null, 62, 125, 89, 'Conkeldurr', 'It is thought that Conkeldurr taught humans how to make concrete more than 2,000 years ago.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/534.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (535, 11, null, 2, null, 33, 93, 11, 'Tympole', 'They warn others of danger by vibrating their cheeks to create a high-pitched sound.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/535.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (536, 11, 5, 2, null, 33, 93, 11, 'Palpitoad', 'When they vibrate the bumps on their heads, they can make waves in water or earthquake-like vibrations on land.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/536.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (537, 11, 5, 2, null, 33, 143, 11, 'Seismitoad', 'They shoot paralyzing liquid from their head bumps. They use vibration to hurt their opponents.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/537.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (538, 2, null, 8, null, 62, 39, 104, 'Throh', 'When it tightens its belt, it becomes stronger. Wild Throh use vines to weave their own belts.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/538.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (539, 2, null, 8, null, 5, 39, 104, 'Sawk', 'The sound of Sawk punching boulders and trees can be heard all the way from the mountains where they train.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/539.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (540, 7, 12, 3, null, 68, 34, 142, 'Sewaddle', 'Leavanny dress it in clothes they made for it when it hatched. It hides its head in its hood while it is sleeping.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/540.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (541, 7, 12, 3, null, 102, 34, 142, 'Swadloon', 'Forests where Swadloon live have superb foliage because the nutrients they make from fallen leaves nourish the plant life.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/541.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (542, 7, 12, 3, null, 68, 34, 142, 'Leavanny', 'Upon finding a small Pokémon, it weaves clothing for it from leaves, using the cutters on its arms and sticky silk.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/542.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (543, 7, 4, 3, null, 38, 68, 3, 'Venipede', 'Its bite injects a potent poison, enough to paralyze large bird Pokémon that try to prey on it.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/543.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (544, 7, 4, 3, null, 38, 68, 3, 'Whirlipede', 'Protected by a hard shell, it spins its body like a wheel and crashes furiously into its enemies.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/544.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (545, 7, 4, 3, null, 38, 68, 3, 'Scolipede', 'With quick movements, it chases down its foes, attacking relentlessly with its horns until it prevails.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/545.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (546, 12, 18, 6, 7, 158, 151, 34, 'Cottonee', 'When attacked, it escapes by shooting cotton from its body. The cotton serves as a decoy to distract the attacker.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/546.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (547, 12, 18, 6, 7, 158, 151, 34, 'Whimsicott', 'Like the wind, it can slip through any gap, no matter how small. It leaves balls of white fluff behind.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/547.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (548, 12, null, 7, null, 34, 20, 102, 'Petilil', 'The leaves on its head are very bitter. Eating one of these leaves is known to refresh a tired body.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/548.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (549, 12, null, 7, null, 34, 20, 102, 'Lilligant', 'Even veteran Trainers face a challenge in getting its beautiful flower to bloom. This Pokémon is popular with celebrities.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/549.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (550, 11, null, 12, null, 120, 91, 104, 'Basculin-red-striped', 'Red and blue Basculin get along so poorly, they’ll start fighting instantly. These Pokémon are very hostile.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/550.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (551, 5, 17, 5, null, 22, 153, 83, 'Sandile', 'They live buried in the sands of the desert. The sun-warmed sands prevent their body temperature from dropping.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/551.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (552, 5, 17, 5, null, 22, 153, 83, 'Krokorok', 'They live in groups of a few individuals. Protective membranes shield their eyes from sandstorms.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/552.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (553, 5, 17, 5, null, 22, 153, 83, 'Krookodile', 'They never allow prey to escape. Their jaws are so powerful, they can crush the body of an automobile.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/553.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (554, 10, null, 5, null, 55, null, 39, 'Darumaka', 'When its internal fire is burning, it cannot calm down and it runs around. When the fire diminishes, it falls asleep.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/554.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (555, 10, null, 5, null, 125, null, 161, 'Darmanitan-standard', 'Its internal fire burns at 2,500° F, making enough power that it can destroy a dump truck with one punch.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/555.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (556, 12, null, 7, null, 11, 34, 114, 'Maractus', 'It uses an up-tempo song and dance to drive away the bird Pokémon that prey on its flower seeds.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/556.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (557, 7, 6, 3, 10, 5, 75, 133, 'Dwebble', 'This Pokémon can easily melt holes in hard rocks with a liquid secreted from its mouth.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/557.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (558, 7, 6, 3, 10, 5, 75, 133, 'Crustle', 'Competing for territory, Crustle fight viciously. The one whose boulder is broken is the loser of the battle.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/558.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (559, 17, 2, 5, 14, 61, 153, 22, 'Scraggy', 'Its skin has a rubbery elasticity, so it can reduce damage by defensively pulling its skin up to its neck.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/559.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (560, 17, 2, 5, 14, 61, 153, 22, 'Scrafty', 'Groups of them beat up anything that enters their territory. Each can spit acidic liquid from its mouth.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/560.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (561, 14, 3, 4, null, 147, 98, 110, 'Sigilyph', 'They never vary the route they fly, because their memories of guarding an ancient city remain steadfast.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/561.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (562, 8, null, 10, 11, 152, null, null, 'Yamask', 'Each of them carries a mask that used to be its face when it was human. Sometimes they look at it and cry.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/562.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (563, 8, null, 10, 11, 152, null, null, 'Cofagrigus', 'It has been said that they swallow those who get too close and turn them into mummies. They like to eat gold nuggets.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/563.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (564, 11, 6, 2, 9, 116, 5, 33, 'Tirtouga', 'Restored from a fossil, this Pokémon can dive to depths beyond half a mile.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/564.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (565, 11, 6, 2, 9, 116, 5, 33, 'Carracosta', 'They can live both in the ocean and on land. A slap from one of them is enough to open a hole in the bottom of a tanker.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/565.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (566, 6, 3, 4, 9, 129, null, null, 'Archen', 'Said to be an ancestor of bird Pokémon, they were unable to fly and moved about by hopping from one branch to another.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/566.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (567, 6, 3, 4, 9, 129, null, null, 'Archeops', 'They are intelligent and will cooperate to catch prey. From the ground, they use a running start to take flight.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/567.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (568, 4, null, 10, null, 1, 60, 106, 'Trubbish', 'Inhaling the gas they belch will make you sleep for a week. They prefer unsanitary places.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/568.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (569, 4, null, 10, null, 1, 133, 106, 'Garbodor', 'It clenches opponents with its left arm and finishes them off with foul-smelling poison gas belched from its mouth.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/569.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (570, 17, null, 5, null, 149, null, null, 'Zorua', 'It changes into the forms of others to surprise them. Apparently, it often transforms into a silent child.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/570.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (571, 17, null, 5, null, 149, null, null, 'Zoroark', 'Stories say those who tried to catch Zoroark were trapped in an illusion and punished.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/571.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (572, 1, null, 5, null, 56, 101, 92, 'Minccino', 'Minccino greet each other by grooming one another thoroughly with their tails.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/572.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (573, 1, null, 5, null, 56, 101, 92, 'Cinccino', 'Their white fur is coated in a special oil that makes it easy for them to deflect attacks.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/573.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (574, 14, null, 8, null, 119, 172, 23, 'Gothita', 'Their ribbonlike feelers increase their psychic power. They are always staring at something.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/574.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (575, 14, null, 8, null, 119, 172, 23, 'Gothorita', 'They use hypnosis to control people and Pokémon. Tales of Gothorita leading people astray are told in every corner.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/575.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (576, 14, null, 8, null, 119, 172, 23, 'Gothitelle', 'Starry skies thousands of light-years away are visible in the space distorted by their intense psychic power.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/576.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (577, 14, null, 11, null, 142, 98, 144, 'Solosis', 'They drive away attackers by unleashing psychic power. They can use telepathy to talk with others.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/577.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (578, 14, null, 11, null, 142, 98, 144, 'Duosion', 'Since they have two divided brains, at times they suddenly try to take two different actions at once.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/578.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (579, 14, null, 11, null, 142, 98, 144, 'Reuniclus', 'When Reuniclus shake hands, a network forms between their brains, increasing their psychic power.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/579.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (580, 11, 3, 2, 4, 51, 145, 93, 'Ducklett', 'These bird Pokémon are excellent divers. They swim around in the water eating their favorite food--peat moss.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/580.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (581, 11, 3, 2, 4, 51, 145, 93, 'Swanna', 'Swanna start to dance at dusk. The one dancing in the middle is the leader of the flock.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/581.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (582, 15, null, 10, null, 115, 81, 133, 'Vanillite', 'The temperature of their breath is -58° F. They create snow crystals and make snow fall in the areas around them.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/582.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (583, 15, null, 10, null, 115, 81, 133, 'Vanillish', 'Snowy mountains are this Pokémon’s habitat. During an ancient ice age, they moved to southern areas.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/583.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (584, 15, null, 10, null, 115, 117, 133, 'Vanilluxe', 'Swallowing large amounts of water, they make snow clouds inside their bodies and attack their foes with violent blizzards.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/584.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (585, 1, 12, 5, null, 34, 157, 32, 'Deerling', 'The color and scent of their fur changes to match the mountain grass. When they sense hostility, they hide in the grass.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/585.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (586, 1, 12, 5, null, 34, 157, 32, 'Sawsbuck', 'They migrate according to the seasons. People can tell the season by looking at Sawsbuck’s horns.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/586.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (587, 13, 3, 5, null, 9, null, 78, 'Emolga', 'The energy made in its cheeks’ electric pouches is stored inside its membrane and released while it is gliding.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/587.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (588, 7, null, 3, null, 68, 61, 99, 'Karrablast', 'These mysterious Pokémon evolve when they receive electrical stimulation while they are in the same place as Shelmet.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/588.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (589, 7, 9, 3, null, 68, 75, 142, 'Escavalier', 'They fly around at high speed, striking with their pointed spears. Even when in trouble, they face opponents bravely.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/589.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (590, 12, 4, 7, null, 27, null, 144, 'Foongus', 'It lures people in with its Poké Ball pattern, then releases poison spores. Why it resembles a Poké Ball is unknown.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/590.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (591, 12, 4, 7, null, 27, null, 144, 'Amoonguss', 'It lures prey close by dancing and waving its arm caps, which resemble Poké Balls, in a swaying motion.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/591.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (592, 11, 8, 11, null, 11, 130, 6, 'Frillish', 'With its thin, veil-like arms wrapped around the body of its opponent, it sinks to the ocean floor.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/592.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (593, 11, 8, 11, null, 11, 130, 6, 'Jellicent', 'The fate of the ships and crew that wander into Jellicent’s habitat: all sunken, all lost, all vanished.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/593.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (594, 11, null, 2, 12, 131, 93, 144, 'Alomomola', 'They float upon the open sea. Many water Pokémon gather in the area around Alomomola.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/594.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (595, 7, 13, 3, null, 14, 127, 68, 'Joltik', 'Joltik that live in cities have learned a technique for sucking electricity from the outlets in houses.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/595.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (596, 7, 13, 3, null, 14, 127, 68, 'Galvantula', 'When attacked, they create an electric barrier by spitting out many electrically charged threads.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/596.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (597, 12, 9, 7, 10, 160, null, null, 'Ferroseed', 'When threatened, it attacks by shooting a barrage of spikes, which gives it a chance to escape by rolling away.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/597.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (598, 12, 9, 7, 10, 160, null, 107, 'Ferrothorn', 'It fights by swinging around its three spiky feelers. A hit from these steel spikes can reduce a boulder to rubble.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/598.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (599, 9, null, 10, null, 57, 58, 29, 'Klink', 'The two minigears that mesh together are predetermined. Each will rebound from other minigears without meshing.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/599.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (600, 9, null, 10, null, 57, 58, 29, 'Klang', 'By changing the direction in which it rotates, it communicates its feelings to others. When angry, it rotates faster.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/600.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (601, 9, null, 10, null, 57, 58, 29, 'Klinklang', 'Its red core functions as an energy tank. It fires the charged energy through its spikes into an area.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/601.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (602, 13, null, 11, null, 26, null, null, 'Tynamo', 'While one alone doesn’t have much power, a chain of many Tynamo can be as powerful as lightning.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/602.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (603, 13, null, 11, null, 26, null, null, 'Eelektrik', 'They coil around foes and shock them with electricity-generating organs that seem simply to be circular patterns.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/603.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (604, 13, null, 11, null, 26, null, null, 'Eelektross', 'They crawl out of the ocean using their arms. They will attack prey on shore and immediately drag it into the ocean.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/604.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (605, 14, null, 8, null, 140, 28, 148, 'Elgyem', 'It uses its strong psychic power to squeeze its opponent’s brain, causing unendurable headaches.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/605.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (606, 14, null, 8, null, 140, 28, 148, 'Beheeyem', 'It can manipulate an opponent’s memory. Apparently, it communicates by flashing its three different-colored fingers.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/606.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (607, 8, 10, 11, null, 18, 49, 151, 'Litwick', 'Litwick shines a light that absorbs the life energy of people and Pokémon, which becomes the fuel that it burns.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/607.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (608, 8, 10, 11, null, 18, 49, 151, 'Lampent', 'This ominous Pokémon is feared. Through cities it wanders, searching for the spirits of the fallen.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/608.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (609, 8, 10, 11, null, 18, 49, 151, 'Chandelure', 'It absorbs a spirit, which it then burns. By waving the flames on its arms, it puts its foes into a hypnotic trance.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/609.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (610, 16, null, 1, 14, 79, 104, 127, 'Axew', 'They use their tusks to crush the berries they eat. Repeated regrowth makes their tusks strong and sharp.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/610.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (611, 16, null, 1, 14, 79, 104, 127, 'Fraxure', 'Since a broken tusk will not grow back, they diligently sharpen their tusks on river rocks after they’ve been fighting.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/611.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (612, 16, null, 1, 14, 79, 104, 127, 'Haxorus', 'They are kind but can be relentless when defending territory. They challenge foes with tusks that can cut steel.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/612.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (613, 15, null, 5, null, 81, 202, 155, 'Cubchoo', 'When it is not feeling well, its mucus gets watery and the power of its Ice-type moves decreases.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/613.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (614, 15, null, 5, null, 81, 202, 33, 'Beartic', 'It can make its breath freeze at will. Very able in the water, it swims around in northern seas and catches prey.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/614.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (615, 15, null, 10, null, 26, null, null, 'Cryogonal', 'When its body temperature goes up, it turns into steam and vanishes. When its temperature lowers, it returns to ice.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/615.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (616, 7, null, 3, null, 93, 75, 142, 'Shelmet', 'When attacked, it defends itself by closing the lid of its shell. It can spit a sticky, poisonous liquid.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/616.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (617, 7, null, 3, null, 93, 60, 84, 'Accelgor', 'When its body dries out, it weakens. So, to prevent dehydration, it wraps itself in many layers of thin membrane.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/617.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (618, 5, 13, 2, 11, 9, 7, 8, 'Stunfisk', 'Its skin is very hard, so it is unhurt even if stepped on by sumo wrestlers. It smiles when transmitting electricity.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/618.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (619, 2, null, 5, 8, 39, 144, 120, 'Mienfoo', 'In fights, they dominate with onslaughts of flowing, continuous attacks. With their sharp claws, they cut enemies.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/619.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (620, 2, null, 5, 8, 39, 144, 120, 'Mienshao', 'It wields the fur on its arms like a whip. Its arm attacks come with such rapidity that they cannot even be seen.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/620.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (621, 16, null, 1, 14, 24, 125, 104, 'Druddigon', 'It warms its body by absorbing sunlight with its wings. When its body temperature falls, it can no longer move.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/621.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (622, 5, 8, 10, null, 89, 103, 99, 'Golett', 'The energy that burns inside it enables it to move, but no one has yet been able to identify this energy.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/622.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (623, 5, 8, 10, null, 89, 103, 99, 'Golurk', 'It flies across the sky at Mach speeds. Removing the seal on its chest makes its internal energy go out of control.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/623.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (624, 17, 9, 8, null, 128, 39, 46, 'Pawniard', 'Blades comprise this Pokémon’s entire body. If battling dulls the blades, it sharpens them on stones by the river.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/624.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (625, 17, 9, 8, null, 128, 39, 46, 'Bisharp', 'It leads a group of Pawniard. It battles to become the boss, but will be driven from the group if it loses.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/625.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (626, 1, null, 5, null, 120, 157, 43, 'Bouffalant', 'Their fluffy fur absorbs damage, even if they strike foes with a fierce headbutt.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/626.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (627, 1, 3, 4, null, 51, 125, 55, 'Rufflet', 'They crush berries with their talons. They bravely stand up to any opponent, no matter how strong it is.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/627.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (628, 1, 3, 4, null, 51, 125, 128, 'Braviary', 'They fight for their friends without any thought about danger to themselves. One can carry a car while flying.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/628.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (629, 17, 3, 4, null, 145, 142, 133, 'Vullaby', 'Its wings are too tiny to allow it to fly. As the time approaches for it to evolve, it discards the bones it was wearing.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/629.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (630, 17, 3, 4, null, 145, 142, 133, 'Mandibuzz', 'It makes a nest out of bones it finds. It grabs weakened prey in its talons and hauls it to its nest of bones.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/630.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (631, 10, null, 5, null, 82, 18, 73, 'Heatmor', 'It breathes through a hole in its tail while it burns with an internal fire. Durant is its prey.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/631.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (632, 7, 9, 3, null, 68, 55, 54, 'Durant', 'They attack in groups, covering themselves in steel armor to protect themselves from Heatmor.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/632.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (633, 17, 16, 14, null, 55, null, null, 'Deino', 'It tends to bite everything, and it is not a picky eater. Approaching it carelessly is dangerous.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/633.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (634, 17, 16, 14, null, 55, null, null, 'Zweilous', 'After it has eaten up all the food in its territory, it moves to another area. Its two heads do not get along.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/634.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (635, 17, 16, 14, null, 26, null, null, 'Hydreigon', 'This brutal Pokémon travels the skies on its six wings. Anything that moves seems like a foe to it, triggering its attack.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/635.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (636, 7, 10, 3, null, 49, null, 68, 'Larvesta', 'This Pokémon was believed to have been born from the sun. When it evolves, its entire body is engulfed in flames.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/636.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (637, 7, 10, 3, null, 49, null, 68, 'Volcarona', 'When volcanic ash darkened the atmosphere, it is said that Volcarona’s fire provided a replacement for the sun.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/637.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (638, 9, 2, 15, null, 154, null, null, 'Cobalion', 'This legendary Pokémon battled against humans to protect Pokémon. Its personality is calm and composed.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/638.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (639, 6, 2, 15, null, 154, null, null, 'Terrakion', 'This Pokémon came to the defense of Pokémon that had lost their homes in a war among humans.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/639.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (640, 12, 2, 15, null, 154, null, null, 'Virizion', 'This Pokémon fought humans in order to protect its friends. Legends about it continue to be passed down.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/640.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (641, 3, null, 15, null, 158, null, 128, 'Tornadus-incarnate', 'The lower half of its body is wrapped in a cloud of energy. It zooms through the sky at 200 mph.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/641.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (642, 13, 3, 15, null, 158, null, 128, 'Thundurus-incarnate', 'Countless charred remains mar the landscape of places through which Thundurus has passed.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/642.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (643, 16, 10, 15, null, 163, null, null, 'Reshiram', 'This Pokémon appears in legends. It sends flames into the air from its tail, burning up everything around it.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/643.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (644, 16, 13, 15, null, 164, null, null, 'Zekrom', 'Concealing itself in lightning clouds, it flies throughout the Unova region. It creates electricity in its tail.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/644.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (645, 5, 3, 15, null, 159, null, 125, 'Landorus-incarnate', 'Lands visited by Landorus grant such bountiful crops that it has been hailed as “The Guardian of the Fields.”', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/645.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (646, 16, 15, 15, null, 46, null, null, 'Kyurem', 'It generates a powerful, freezing energy inside itself, but its body became frozen when the energy leaked out.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/646.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (647, 11, 2, 15, null, 154, null, null, 'Keldeo-ordinary', 'By blasting water from its hooves, it can glide across water. It excels at using leg moves while battling.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/647.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (648, 1, 14, 15, null, 32, null, null, 'Meloetta-aria', 'Its melodies are sung with a special vocalization method that can control the feelings of those who hear it.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/648.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (649, 7, 9, 15, null, 88, null, null, 'Genesect', 'Over 300 million years ago, it was feared as the strongest of hunters. It has been modified by Team Plasma.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/649.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (650, 12, null, 5, null, 65, null, 171, 'Chespin', 'The quills on its head are usually soft. When it flexes them, the points become so hard and sharp that they can pierce rock.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/650.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (651, 12, null, 5, null, 65, null, 171, 'Quilladin', 'It relies on its sturdy shell to deflect predators’ attacks. It counterattacks with its sharp quills.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/651.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (652, 12, 2, 5, null, 65, null, 171, 'Chesnaught', 'Its Tackle is forceful enough to flip a 50-ton tank. It shields its allies from danger with its own body.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/652.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (653, 10, null, 5, null, 66, null, 170, 'Fennekin', 'Eating a twig fills it with energy, and its roomy ears give vent to air hotter than 390 degrees Fahrenheit.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/653.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (654, 10, null, 5, null, 66, null, 170, 'Braixen', 'It has a twig stuck in its tail. With friction from its tail fur, it sets the twig on fire and launches into battle.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/654.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (655, 10, 14, 5, null, 66, null, 170, 'Delphox', 'It gazes into the flame at the tip of its branch to achieve a focused state, which allows it to see into the future.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/655.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (656, 11, null, 2, null, 67, null, 168, 'Froakie', 'It secretes flexible bubbles from its chest and back. The bubbles reduce the damage it would otherwise take when attacked.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/656.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (657, 11, null, 2, null, 67, null, 168, 'Frogadier', 'It can throw bubble-covered pebbles with precise control, hitting empty cans up to a hundred feet away.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/657.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (658, 11, 17, 2, null, 67, null, 168, 'Greninja', 'It creates throwing stars out of compressed water. When it spins them and throws them at high speed, these stars can split metal in two.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/658.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (659, 1, null, 5, null, 53, 167, 37, 'Bunnelby', 'They use their large ears to dig burrows. They will dig the whole night through.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/659.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (660, 1, 5, 5, null, 53, 167, 37, 'Diggersby', 'With their powerful ears, they can heft boulders of a ton or more with ease. They can be a big help at construction sites.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/660.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (661, 1, 3, 4, null, 145, null, 177, 'Fletchling', 'These friendly Pokémon send signals to one another with beautiful chirps and tail-feather movements.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/661.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (662, 10, 3, 4, null, 49, null, 177, 'Fletchinder', 'From its beak, it expels embers that set the tall grass on fire. Then it pounces on the bewildered prey that pop out of the grass.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/662.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (663, 10, 3, 4, null, 49, null, 177, 'Talonflame', 'In the fever of an exciting battle, it showers embers from the gaps between its feathers and takes to the air.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/663.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (664, 7, null, 3, null, 19, 14, 132, 'Scatterbug', 'When under attack from bird Pokémon, it spews a poisonous black powder that causes paralysis on contact.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/664.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (665, 7, null, 3, null, 61, null, 132, 'Spewpa', 'It lives hidden within thicket shadows. When predators attack, it quickly bristles the fur covering its body in an effort to threaten them.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/665.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (666, 7, 3, 3, null, 19, 14, 132, 'Vivillon', 'Vivillon with many different patterns are found all over the world. These patterns are affected by the climate of their habitat.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/666.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (667, 10, 1, 5, null, 79, 127, 153, 'Litleo', 'The stronger the opponent it faces, the more heat surges from its mane and the more power flows through its body.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/667.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (668, 10, 1, 5, null, 79, 127, 153, 'Pyroar', 'The male with the largest mane of fire is the leader of the pride.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/668.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (669, 18, null, 6, null, 166, null, 180, 'Flabebe', 'It draws out and controls the hidden power of flowers. The flower Flabébé holds is most likely part of its body.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/669.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (670, 18, null, 6, null, 166, null, 180, 'Floette', 'It flutters around fields of flowers and cares for flowers that are starting to wilt. It draws out the hidden power of flowers to battle.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/670.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (671, 18, null, 6, null, 166, null, 180, 'Florges', 'It claims exquisite flower gardens as its territory, and it obtains power from basking in the energy emitted by flowering plants.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/671.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (672, 12, null, 5, null, 157, null, 179, 'Skiddo', 'Thought to be one of the first Pokémon to live in harmony with humans, it has a placid disposition.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/672.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (673, 12, null, 5, null, 157, null, 179, 'Gogoat', 'It can tell how its Trainer is feeling by subtle shifts in the grip on its horns. This empathic sense lets them run as if one being.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/673.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (674, 2, null, 5, 8, 89, 104, 113, 'Pancham', 'It does its best to be taken seriously by its enemies, but its glare is not sufficiently intimidating. Chewing on a leaf is its trademark.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/674.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (675, 2, 17, 5, 8, 89, 104, 113, 'Pangoro', 'Although it possesses a violent temperament, it won’t put up with bullying. It uses the leaf in its mouth to sense the movements of its enemies.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/675.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (676, 1, null, 5, null, 169, null, null, 'Furfrou', 'Trimming its fluffy fur not only makes it more elegant but also increases the swiftness of its movements.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/676.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (677, 14, null, 5, null, 51, 151, 20, 'Espurr', 'The organ that emits its intense psychic power is sheltered by its ears to keep power from leaking out.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/677.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (678, 14, null, 5, null, 51, 151, 158, 'Meowstic-male', 'When in danger, it raises its ears and releases enough psychic power to grind a 10-ton truck into dust.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/678.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (679, 9, 8, 10, null, 99, null, null, 'Honedge', 'Apparently this Pokémon is born when a departed spirit inhabits a sword. It attaches itself to people and drinks their life force.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/679.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (680, 9, 8, 10, null, 99, null, null, 'Doublade', 'When Honedge evolves, it divides into two swords, which cooperate via telepathy to coordinate attacks and slash their enemies to ribbons.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/680.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (681, 9, 8, 10, null, 176, null, null, 'Aegislash-shield', 'Generations of kings were attended by these Pokémon, which used their spectral power to manipulate and control people and Pokémon.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/681.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (682, 18, null, 6, null, 131, null, 165, 'Spritzee', 'It emits a scent that enraptures those who smell it. This fragrance changes depending on what it has eaten.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/682.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (683, 18, null, 6, null, 131, null, 165, 'Aromatisse', 'It devises various scents, pleasant and unpleasant, and emits scents that its enemies dislike in order to gain an edge in battle.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/683.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (684, 18, null, 6, null, 175, null, 84, 'Swirlix', 'To entangle its opponents in battle, it extrudes white threads as sweet and sticky as cotton candy.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/684.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (685, 18, null, 6, null, 175, null, 84, 'Slurpuff', 'It can distinguish the faintest of scents. It puts its sensitive sense of smell to use by helping pastry chefs in their work.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/685.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (686, 17, 14, 2, 12, 126, 21, 151, 'Inkay', 'Opponents who stare at the flashing of the light-emitting spots on its body become dazed and lose their will to fight.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/686.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (687, 17, 14, 2, 12, 126, 21, 151, 'Malamar', 'It wields the most compelling hypnotic powers of any Pokémon, and it forces others to do whatever it wants.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/687.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (688, 6, 11, 9, null, 181, 97, 124, 'Binacle', 'Two Binacle live together on one rock. When they fight, one of them will move to a different rock.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/688.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (689, 6, 11, 9, null, 181, 97, 124, 'Barbaracle', 'When they evolve, two Binacle multiply into seven. They fight with the power of seven Binacle.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/689.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (690, 4, 11, 2, 14, 38, 143, 91, 'Skrelp', 'Camouflaged as rotten kelp, they spray liquid poison on prey that approaches unawares and then finish it off.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/690.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (691, 4, 16, 2, 14, 38, 143, 91, 'Dragalge', 'Their poison is strong enough to eat through the hull of a tanker, and they spit it indiscriminately at anything that enters their territory.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/691.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (692, 11, null, 2, 9, 178, null, null, 'Clauncher', 'They knock down flying prey by firing compressed water from their massive claws like shooting a pistol.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/692.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (693, 11, null, 2, 9, 178, null, null, 'Clawitzer', 'Their enormous claws launch cannonballs of water powerful enough to pierce tanker hulls.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/693.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (694, 13, 1, 1, 14, 87, 8, 94, 'Helioptile', 'They make their home in deserts. They can generate their energy from basking in the sun, so eating food is not a requirement.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/694.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (695, 13, 1, 1, 14, 87, 8, 94, 'Heliolisk', 'They flare their frills and generate energy. A single Heliolisk can generate sufficient electricity to power a skyscraper.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/695.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (696, 6, 16, 1, 14, 173, null, 5, 'Tyrunt', 'This Pokémon was restored from a fossil. If something happens that it doesn’t like, it throws a tantrum and runs wild.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/696.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (697, 6, 16, 1, 14, 173, null, 69, 'Tyrantrum', 'The king of the ancient world, it can easily crunch a car with the devastating strength of its enormous jaws.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/697.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (698, 6, 15, 1, null, 174, null, 117, 'Amaura', 'This ancient Pokémon was restored from part of its body that had been frozen in ice for over 100 million years.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/698.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (699, 6, 15, 1, null, 174, null, 117, 'Aurorus', 'The diamond-shaped crystals on its body expel air as cold as -240 degrees Fahrenheit, surrounding its enemies and encasing them in ice.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/699.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (700, 18, null, 5, null, 56, null, 182, 'Sylveon', 'It sends a soothing aura from its ribbonlike feelers to calm fights.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/700.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (701, 2, 3, 8, null, 7, 84, 104, 'Hawlucha', 'Although its body is small, its proficient fighting skills enable it to keep up with big bruisers like Machamp and Hariyama.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/701.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (702, 13, 18, 5, 6, 167, 53, 57, 'Dedenne', 'Its whiskers serve as antennas. By sending and receiving electrical waves, it can communicate with others over vast distances.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/702.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (703, 6, 18, 6, 10, 29, null, 5, 'Carbink', 'Born from the temperatures and pressures deep underground, it fires beams from the stone in its head.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/703.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (704, 16, null, 14, null, 157, 93, 183, 'Goomy', 'The weakest Dragon-type Pokémon, it lives in damp, shady places, so its body doesn’t dry out.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/704.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (705, 16, null, 14, null, 157, 93, 183, 'Sliggoo', 'It drives away opponents by excreting a sticky liquid that can dissolve anything. Its eyes devolved, so it can’t see anything.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/705.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (706, 16, null, 14, null, 157, 93, 183, 'Goodra', 'This very friendly Dragon-type Pokémon will hug its beloved Trainer, leaving that Trainer covered in sticky slime.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/706.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (707, 9, 18, 10, null, 158, null, 170, 'Klefki', 'These key collectors threaten any attackers by fiercely jingling their keys at them.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/707.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (708, 8, 12, 7, 11, 30, 119, 139, 'Phantump', 'These Pokémon are created when spirits possess rotten tree stumps. They prefer to live in abandoned forests.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/708.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (709, 8, 12, 7, 11, 30, 119, 139, 'Trevenant', 'It can control trees at will. It will trap people who harm the forest, so they can never leave.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/709.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (710, 8, 12, 11, null, 53, 119, 15, 'Pumpkaboo-average', 'Small Pumpkaboo are said to be the product of areas where few lost souls lingered.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/710.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (711, 8, 12, 11, null, 53, 119, 15, 'Gourgeist-average', 'Singing in eerie voices, they wander town streets on the night of the new moon. Anyone who hears their song is cursed.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/711.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (712, 15, null, 1, null, 20, 115, 5, 'Bergmite', 'It blocks opponents’ attacks with the ice that shields its body. It uses cold air to repair any cracks with new ice.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/712.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (713, 15, null, 1, null, 20, 115, 5, 'Avalugg', 'Its ice-covered body is as hard as steel. Its cumbersome frame crushes anything that stands in its way.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/713.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (714, 3, 16, 4, null, 119, 151, 140, 'Noibat', 'They live in pitch-black caves. Their enormous ears can emit ultrasonic waves of 200,000 hertz.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/714.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (715, 3, 16, 4, null, 119, 151, 140, 'Noivern', 'They fly around on moonless nights and attack careless prey. Nothing can beat them in a battle in the dark.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/715.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (716, 18, null, 15, null, 187, null, null, 'Xerneas', 'Legends say it can share eternal life. It slept for a thousand years in the form of a tree before its revival.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/716.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (717, 17, 3, 15, null, 186, null, null, 'Yveltal', 'When this legendary Pokémon’s wings and tail feathers spread wide and glow red, it absorbs the life force of living creatures.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/717.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (718, 16, 5, 15, null, 188, null, null, 'Zygarde', 'When the Kalos region’s ecosystem falls into disarray, it appears and reveals its secret power.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/718.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (719, 6, 18, 15, null, 29, null, null, 'Diancie', 'A sudden transformation of Carbink, its pink, glimmering body is said to be the loveliest sight in the whole world.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/719.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (720, 14, 8, 15, null, 170, null, null, 'Hoopa', 'This troublemaker sends anything and everything to faraway places using its loop, which can warp space.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/720.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (721, 10, 11, 15, null, 11, null, null, 'Volcanion', 'It lets out billows of steam and disappears into the dense fog. It’s said to live in mountains where humans do not tread.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/721.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (722, 12, 3, 4, null, 65, null, 203, 'Rowlet', 'This wary Pokémon uses photosynthesis to store up energy during the day, while becoming active at night.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/722.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (723, 12, 3, 4, null, 65, null, 203, 'Dartrix', 'A bit of a dandy, it spends its free time preening its wings. Its preoccupation with any dirt on its plumage can leave it unable to battle.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/723.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (724, 12, 8, 4, null, 65, null, 203, 'Decidueye', 'It fires arrow quills from its wings with such precision, they can pierce a pebble at distances over a hundred yards.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/724.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (725, 10, null, 5, null, 66, null, 22, 'Litten', 'While grooming itself, it builds up fur inside its stomach. It sets the fur alight and spews fiery attacks, which change based on how it coughs.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/725.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (726, 10, null, 5, null, 66, null, 22, 'Torracat', 'At its throat, it bears a bell of fire. The bell rings brightly whenever this Pokémon spits fire.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/726.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (727, 10, 17, 5, null, 66, null, 22, 'Incineroar', 'This Pokémon has a violent, selfish disposition. If it’s not in the mood to listen, it will ignore its Trainer’s orders with complete nonchalance.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/727.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (728, 11, null, 2, 5, 67, null, 204, 'Popplio', 'This Pokémon snorts body fluids from its nose, blowing balloons to smash into its foes. It’s famous for being a hard worker.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/728.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (729, 11, null, 2, 5, 67, null, 204, 'Brionne', 'A skillful dancer, it creates a sequence of water balloons as it dances, and briskly bombards its enemies.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/729.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (730, 11, 18, 2, 5, 67, null, 204, 'Primarina', 'It controls its water balloons with song. The melody is learned from others of its kind and is passed down from one generation to the next.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/730.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (731, 1, 3, 4, null, 51, 92, 53, 'Pikipek', 'It can peck at a rate of 16 times a second to drill holes in trees. It uses the holes for food storage and for nesting.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/731.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (732, 1, 3, 4, null, 51, 92, 53, 'Trumbeak', 'It eats berries and stores their seeds in its beak. When it encounters enemies or prey, it fires off all the seeds in a burst.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/732.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (733, 1, 3, 4, null, 51, 92, 125, 'Toucannon', 'When it battles, its beak heats up. The temperature can easily exceed 212 degrees Fahrenheit, causing severe burns when it hits.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/733.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (734, 1, null, 5, null, 198, 173, 91, 'Yungoos', 'With its sharp fangs, it will bite anything. It did not originally live in Alola but was imported from another region.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/734.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (735, 1, null, 5, null, 198, 173, 91, 'Gumshoos', 'When it finds a trace of its prey, it patiently stakes out the location...but it’s always snoozing by nightfall.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/735.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (736, 7, null, 3, null, 68, null, null, 'Grubbin', 'Its strong jaw enables it to scrape trees and slurp out the sap. It normally lives underground.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/736.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (737, 7, 13, 3, null, 217, null, null, 'Charjabug', 'Its body is capable of storing electricity. On camping trips, people are grateful to have one around.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/737.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (738, 7, 13, 3, null, 26, null, null, 'Vikavolt', 'It zips around, on sharp lookout for an opening. It concentrates electrical energy within its large jaws and uses it to zap its enemies.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/738.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (739, 2, null, 9, null, 52, 89, 83, 'Crabrawler', 'While guarding its weak points with its pincers, it looks for an opening and unleashes punches. When it loses, it foams at the mouth and faints.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/739.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (740, 2, 15, 9, null, 52, 89, 83, 'Crabominable', 'It aimed for the top but got lost and ended up on a snowy mountain. Being forced to endure the cold, this Pokémon evolved and grew fur.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/740.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (741, 10, 3, 4, null, 216, null, null, 'Oricorio-baile', 'It beats its wings together to create fire. As it moves in the steps of its beautiful dance, it bathes opponents in intense flames.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/741.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (742, 7, 18, 3, 6, 118, 19, 175, 'Cutiefly', 'It feeds on the nectar and pollen of flowers. Because it’s able to sense auras, it can identify which flowers are about to bloom.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/742.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (743, 7, 18, 3, 6, 118, 19, 175, 'Ribombee', 'It rolls up pollen into puffs. It makes many different varieties, some used as food and others used in battle.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/743.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (744, 6, null, 5, null, 51, 72, 80, 'Rockruff', 'It’s considered to be a good Pokémon for beginners because of its friendliness, but its disposition grows rougher as it grows up.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/744.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (745, 6, null, 5, null, 51, 146, 80, 'Lycanroc-midday', 'Its quick movements confuse its enemies. Well equipped with claws and fangs, it also uses the sharp rocks in its mane as weapons.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/745.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (746, 11, null, 12, null, 208, null, null, 'Wishiwashi-solo', 'When it’s in trouble, its eyes moisten and begin to shine. The shining light attracts its comrades, and they stand together against their enemies.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/746.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (747, 4, 11, 2, null, 196, 7, 144, 'Mareanie', 'It plunges the poison spike on its head into its prey. When the prey has weakened, Mareanie deals the finishing blow with its 10 tentacles.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/747.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (748, 4, 11, 2, null, 196, 7, 144, 'Toxapex', 'Toxapex crawls along the ocean floor on its 12 legs. It leaves a trail of Corsola bits scattered in its wake.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/748.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (749, 5, null, 5, null, 20, 192, 39, 'Mudbray', 'The mud stuck to Mudbray’s hooves enhances its grip and its powerful running gait.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/749.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (750, 5, null, 5, null, 20, 192, 39, 'Mudsdale', 'It spits a mud that provides resistance to both wind and rain, so the walls of old houses were often coated with it.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/750.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (751, 11, 7, 2, 3, 199, null, 11, 'Dewpider', 'It crawls onto the land in search of food. Its water bubble allows it to breathe and protects its soft head.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/751.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (752, 11, 7, 2, 3, 199, null, 11, 'Araquanid', 'It delivers headbutts with the water bubble on its head. Small Pokémon get sucked into the bubble, where they drown.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/752.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (753, 12, null, 7, null, 102, null, 126, 'Fomantis', 'During the day, it sleeps and soaks up light. When night falls, it walks around looking for a safer place to sleep.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/753.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (754, 12, null, 7, null, 102, null, 126, 'Lurantis', 'It requires a lot of effort to maintain Lurantis’s vivid coloring, but some collectors enjoy this work and treat it as their hobby.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/754.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (755, 12, 18, 7, null, 35, 27, 44, 'Morelull', 'It scatters spores that flicker and glow. Anyone seeing these lights falls into a deep slumber.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/755.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (756, 12, 18, 7, null, 35, 27, 44, 'Shiinotic', 'Forests where Shiinotic live are treacherous to enter at night. People confused by its strange lights can never find their way home again.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/756.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (757, 4, 10, 1, 14, 212, null, 12, 'Salandit', 'It burns its bodily fluids to create a poisonous gas. When its enemies become disoriented from inhaling the gas, it attacks them.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/757.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (758, 4, 10, 1, 14, 212, null, 12, 'Salazzle', 'For some reason, only females have been found. It creates a reverse harem of male Salandit that it lives with.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/758.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (759, 1, 2, 5, null, 218, 103, 56, 'Stufful', 'Despite its adorable appearance, when it gets angry and flails about, its arms and legs could knock a pro wrestler sprawling.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/759.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (760, 1, 2, 5, null, 218, 103, 127, 'Bewear', 'This immensely dangerous Pokémon possesses overwhelming physical strength. Its habitat is generally off-limits.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/760.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (761, 12, null, 7, null, 102, 12, 175, 'Bounsweet', 'A delectable aroma pours from its body. They are often swallowed whole by Toucannon lured by that wafting deliciousness.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/761.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (762, 12, null, 7, null, 102, 12, 175, 'Steenee', 'The sepals on its head developed to protect its body. These are quite hard, so even if pecked by bird Pokémon, this Pokémon is totally fine.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/762.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (763, 12, null, 7, null, 102, 214, 175, 'Tsareena', 'Its long, striking legs aren’t just for show but to be used to kick with skill. In victory, it shows off by kicking the defeated, laughing boisterously.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/763.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (764, 18, null, 7, null, 166, 205, 30, 'Comfey', 'It attaches flowers to its highly nutritious vine. This revitalizes the flowers, and they give off an aromatic scent.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/764.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (765, 1, 14, 5, null, 39, 140, 180, 'Oranguru', 'Known for its extreme intelligence, this Pokémon will look down on inexperienced Trainers, so it’s best suited to veteran Trainers.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/765.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (766, 2, null, 5, null, 222, null, 128, 'Passimian', 'They form groups of roughly 20 individuals. Their mutual bond is remarkable—they will never let down a comrade.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/766.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (767, 7, 11, 3, 9, 193, null, null, 'Wimpod', 'This Pokémon is a coward. As it desperately dashes off, the flailing of its many legs leaves a sparkling clean path in its wake.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/767.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (768, 7, 11, 3, 9, 194, null, null, 'Golisopod', 'With a flashing slash of its giant sharp claws, it cleaves seawater—or even air—right in two.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/768.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (769, 8, 5, 11, null, 195, null, 8, 'Sandygast', 'Born from a sand mound playfully built by a child, this Pokémon embodies the grudges of the departed.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/769.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (770, 8, 5, 11, null, 195, null, 8, 'Palossand', 'Possessed people controlled by this Pokémon transformed its sand mound into a castle. As it evolved, its power to curse grew ever stronger.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/770.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (771, 11, null, 2, null, 215, null, 109, 'Pyukumuku', 'It lives in shallow seas, such as areas near a beach. It can eject its internal organs, which it uses to engulf its prey or battle enemies.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/771.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (772, 1, null, 15, null, 4, null, null, 'Type-null', 'The heavy control mask it wears suppresses its intrinsic capabilities. This Pokémon has some hidden special power.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/772.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (773, 1, null, 15, null, 225, null, null, 'Silvally', 'Its trust in its partner is what awakens it. This Pokémon is capable of changing its type, a flexibility that is well displayed in battle.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/773.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (774, 6, 3, 10, null, 197, null, null, 'Minior-red-meteor', 'Originally making its home in the ozone layer, it hurtles to the ground when the shell enclosing its body grows too heavy.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/774.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (775, 1, null, 5, null, 213, null, null, 'Komala', 'It is born asleep, and it dies asleep. All its movements are apparently no more than the results of it tossing and turning in its dreams.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/775.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (776, 10, 16, 1, 14, 75, null, null, 'Turtonator', 'The shell on its back is chemically unstable and explodes violently if struck. The hole in its stomach is its weak point.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/776.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (777, 13, 9, 5, 6, 160, 31, 5, 'Togedemaru', 'The spiny fur on its back is normally at rest. When this Pokémon becomes agitated, its fur stands on end and stabs into its attackers.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/777.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (778, 8, 18, 11, null, 209, null, null, 'Mimikyu-disguised', 'Its actual appearance is unknown. A scholar who saw what was under its rag was overwhelmed by terror and died from the shock.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/778.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (779, 11, 14, 12, null, 219, 173, 147, 'Bruxish', 'When it unleashes its psychic power from the protuberance on its head, the grating sound of grinding teeth echoes through the area.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/779.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (780, 1, 16, 1, 14, 201, 157, 13, 'Drampa', 'It has a compassionate personality, but if it is angered, it completely destroys its surroundings with its intense breath.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/780.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (781, 8, 12, 10, null, 200, null, null, 'Dhelmise', 'Swinging its massive anchor, it can KO Wailord in a single blow. What appears to be green seaweed is actually its body.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/781.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (782, 16, null, 14, null, 171, 43, 142, 'Jangmo-o', 'It expresses its feelings by smacking its scales. Metallic sounds echo through the tall mountains where Jangmo-o lives.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/782.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (783, 16, 2, 14, null, 171, 43, 142, 'Hakamo-o', 'It leaps at its prey with a courageous shout. Its scaly punches tear its opponents to shreds.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/783.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (784, 16, 2, 14, null, 171, 43, 142, 'Kommo-o', 'When it spots enemies, it threatens them by jingling the scales on its tail. Weak opponents will crack and flee in panic.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/784.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (785, 13, 18, 15, null, 226, null, 140, 'Tapu-koko', 'This guardian deity of Melemele is brimming with curiosity. It summons thunderclouds and stores their lightning inside its body.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/785.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (786, 14, 18, 15, null, 227, null, 140, 'Tapu-lele', 'This guardian deity of Akala is guilelessly cruel. The fragrant aroma of flowers is the source of its energy.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/786.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (787, 12, 18, 15, null, 229, null, 140, 'Tapu-bulu', 'It pulls large trees up by the roots and swings them around. It causes vegetation to grow, and then it absorbs energy from the growth.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/787.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (788, 11, 18, 15, null, 228, null, 140, 'Tapu-fini', 'The dense fog it creates brings the downfall and destruction of its confused enemies. Ocean currents are the source of its energy.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/788.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (789, 14, null, 15, null, 109, null, null, 'Cosmog', 'Its body is gaseous and frail. It slowly grows as it collects dust from the atmosphere.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/789.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (790, 14, null, 15, null, 5, null, null, 'Cosmoem', 'Motionless as if dead, its body is faintly warm to the touch. In the distant past, it was called the cocoon of the stars.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/790.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (791, 14, 9, 15, null, 230, null, null, 'Solgaleo', 'It is said to live in another world. The intense light it radiates from the surface of its body can make the darkest of nights light up like midday.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/791.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (792, 14, 8, 15, null, 231, null, null, 'Lunala', 'It is said to be a female evolution of Cosmog. When its third eye activates, away it flies to another world.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/792.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (793, 6, 4, 15, null, 224, null, null, 'Nihilego', 'One of several mysterious Ultra Beasts. People on the street report observing those infested by it suddenly becoming violent.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/793.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (794, 7, 2, 15, null, 224, null, null, 'Buzzwole', 'This Ultra Beast appeared from another world. It shows off its body, but whether that display is a boast or a threat remains unclear.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/794.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (795, 7, 2, 15, null, 224, null, null, 'Pheromosa', 'One of the dangerous Ultra Beasts, it has been spotted running across the land at terrific speeds.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/795.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (796, 13, null, 15, null, 224, null, null, 'Xurkitree', 'It appeared from the Ultra Wormhole. It raided a power plant, so people think it energizes itself with electricity.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/796.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (797, 9, 3, 15, null, 224, null, null, 'Celesteela', 'It appeared from the Ultra Wormhole. Witnesses observed it flying across the sky at high speed.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/797.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (798, 12, 9, 15, null, 224, null, null, 'Kartana', 'This Ultra Beast came from the Ultra Wormhole. It seems not to attack enemies on its own, but its sharp body is a dangerous weapon in itself.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/798.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (799, 17, 16, 15, null, 224, null, null, 'Guzzlord', 'It has gobbled mountains and swallowed whole buildings, according to reports. It’s one of the Ultra Beasts.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/799.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (800, 14, null, 15, null, 232, null, null, 'Necrozma', 'Reminiscent of the Ultra Beasts, this life-form, apparently asleep underground, is thought to have come from another world in ancient times.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/800.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (801, 9, 18, 15, null, 220, null, null, 'Magearna', 'This artificial Pokémon, constructed more than 500 years ago, can understand human speech but cannot itself speak.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/801.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (802, 2, 8, 15, null, 101, null, null, 'Marshadow', 'Able to conceal itself in shadows, it never appears before humans, so its very existence was the stuff of myth.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/802.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (803, 4, null, 15, null, 224, null, null, 'Poipole', 'This Ultra Beast is well enough liked to be chosen as a first partner in its own world.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/803.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (804, 4, 16, 15, null, 224, null, null, 'Naganadel', 'It stores hundreds of liters of poisonous liquid inside its body. It is one of the organisms known as UBs.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/804.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (805, 6, 9, 15, null, 224, null, null, 'Stakataka', 'It appeared from an Ultra Wormhole. Each one appears to be made up of many life-forms stacked one on top of each other.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/805.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (806, 10, 8, 15, null, 224, null, null, 'Blacephalon', 'It slithers toward people. Then, without warning, it triggers the explosion of its own head. It’s apparently one kind of Ultra Beast.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/806.png');
INSERT INTO POKEMON(POKEMON_ID, PRIMARY_TYPE, SECONDARY_TYPE, PRIMARY_EGG_GROUP, SECONDARY_EGG_GROUP, PRIMARY_ABILITY,
                    SECONDARY_ABILITY, HIDDEN_ABILITY, POKEMON_NAME, POKEMON_DESCRIPTION,
                    POKEMON_IMAGE_URL) VALUE (807, 13, null, 15, null, 10, null, null, 'Zeraora', 'It electrifies its claws and tears its opponents apart with them. Even if they dodge its attack, they’ll be electrocuted by the flying sparks.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/807.png');

INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 1, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 1, 49);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 1, 49);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 1, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 1, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 1, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 2, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 2, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 2, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 2, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 2, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 2, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 3, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 3, 82);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 3, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 3, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 3, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 3, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 4, 39);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 4, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 4, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 4, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 4, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 4, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 5, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 5, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 5, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 5, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 5, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 5, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 6, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 6, 84);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 6, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 6, 109);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 6, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 6, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 7, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 7, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 7, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 7, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 7, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 7, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 8, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 8, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 8, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 8, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 8, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 8, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 9, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 9, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 9, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 9, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 9, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 9, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 10, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 10, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 10, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 10, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 10, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 10, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 11, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 11, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 11, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 11, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 11, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 11, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 12, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 12, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 12, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 12, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 12, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 12, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 13, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 13, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 13, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 13, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 13, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 13, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 14, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 14, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 14, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 14, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 14, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 14, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 15, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 15, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 15, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 15, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 15, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 15, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 16, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 16, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 16, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 16, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 16, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 16, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 17, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 17, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 17, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 17, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 17, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 17, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 18, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 18, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 18, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 18, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 18, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 18, 101);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 19, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 19, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 19, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 19, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 19, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 19, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 20, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 20, 81);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 20, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 20, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 20, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 20, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 21, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 21, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 21, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 21, 31);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 21, 31);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 21, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 22, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 22, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 22, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 22, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 22, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 22, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 23, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 23, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 23, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 23, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 23, 54);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 23, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 24, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 24, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 24, 69);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 24, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 24, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 24, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 25, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 25, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 25, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 25, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 25, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 25, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 26, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 26, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 26, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 26, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 26, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 26, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 27, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 27, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 27, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 27, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 27, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 27, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 28, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 28, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 28, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 28, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 28, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 28, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 29, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 29, 47);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 29, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 29, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 29, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 29, 41);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 30, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 30, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 30, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 30, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 30, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 30, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 31, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 31, 92);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 31, 87);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 31, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 31, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 31, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 32, 46);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 32, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 32, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 32, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 32, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 32, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 33, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 33, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 33, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 33, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 33, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 33, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 34, 81);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 34, 102);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 34, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 34, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 34, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 34, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 35, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 35, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 35, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 35, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 35, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 35, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 36, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 36, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 36, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 36, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 36, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 36, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 37, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 37, 41);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 37, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 37, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 37, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 37, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 38, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 38, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 38, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 38, 81);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 38, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 38, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 39, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 39, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 39, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 39, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 39, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 39, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 40, 140);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 40, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 40, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 40, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 40, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 40, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 41, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 41, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 41, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 41, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 41, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 41, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 42, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 42, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 42, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 42, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 42, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 42, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 43, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 43, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 43, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 43, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 43, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 43, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 44, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 44, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 44, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 44, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 44, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 44, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 45, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 45, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 45, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 45, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 45, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 45, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 46, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 46, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 46, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 46, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 46, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 46, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 47, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 47, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 47, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 47, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 47, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 47, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 48, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 48, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 48, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 48, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 48, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 48, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 49, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 49, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 49, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 49, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 49, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 49, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 50, 10);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 50, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 50, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 50, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 50, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 50, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 51, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 51, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 51, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 51, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 51, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 51, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 52, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 52, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 52, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 52, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 52, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 52, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 53, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 53, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 53, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 53, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 53, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 53, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 54, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 54, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 54, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 54, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 54, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 54, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 55, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 55, 82);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 55, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 55, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 55, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 55, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 56, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 56, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 56, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 56, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 56, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 56, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 57, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 57, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 57, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 57, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 57, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 57, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 58, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 58, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 58, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 58, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 58, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 58, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 59, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 59, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 59, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 59, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 59, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 59, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 60, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 60, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 60, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 60, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 60, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 60, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 61, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 61, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 61, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 61, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 61, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 61, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 62, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 62, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 62, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 62, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 62, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 62, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 63, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 63, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 63, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 63, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 63, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 63, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 64, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 64, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 64, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 64, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 64, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 64, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 65, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 65, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 65, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 65, 135);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 65, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 65, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 66, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 66, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 66, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 66, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 66, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 66, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 67, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 67, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 67, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 67, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 67, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 67, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 68, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 68, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 68, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 68, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 68, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 68, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 69, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 69, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 69, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 69, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 69, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 69, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 70, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 70, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 70, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 70, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 70, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 70, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 71, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 71, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 71, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 71, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 71, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 71, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 72, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 72, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 72, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 72, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 72, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 72, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 73, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 73, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 73, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 73, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 73, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 73, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 74, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 74, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 74, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 74, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 74, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 74, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 75, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 75, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 75, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 75, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 75, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 75, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 76, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 76, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 76, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 76, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 76, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 76, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 77, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 77, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 77, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 77, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 77, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 77, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 78, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 78, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 78, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 78, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 78, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 78, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 79, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 79, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 79, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 79, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 79, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 79, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 80, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 80, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 80, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 80, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 80, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 80, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 81, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 81, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 81, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 81, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 81, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 81, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 82, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 82, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 82, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 82, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 82, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 82, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 83, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 83, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 83, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 83, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 83, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 83, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 84, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 84, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 84, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 84, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 84, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 84, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 85, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 85, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 85, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 85, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 85, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 85, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 86, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 86, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 86, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 86, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 86, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 86, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 87, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 87, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 87, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 87, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 87, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 87, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 88, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 88, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 88, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 88, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 88, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 88, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 89, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 89, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 89, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 89, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 89, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 89, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 90, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 90, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 90, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 90, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 90, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 90, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 91, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 91, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 91, 180);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 91, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 91, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 91, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 92, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 92, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 92, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 92, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 92, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 92, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 93, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 93, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 93, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 93, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 93, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 93, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 94, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 94, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 94, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 94, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 94, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 94, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 95, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 95, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 95, 160);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 95, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 95, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 95, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 96, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 96, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 96, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 96, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 96, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 96, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 97, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 97, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 97, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 97, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 97, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 97, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 98, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 98, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 98, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 98, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 98, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 98, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 99, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 99, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 99, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 99, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 99, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 99, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 100, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 100, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 100, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 100, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 100, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 100, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 101, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 101, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 101, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 101, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 101, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 101, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 102, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 102, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 102, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 102, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 102, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 102, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 103, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 103, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 103, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 103, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 103, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 103, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 104, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 104, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 104, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 104, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 104, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 104, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 105, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 105, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 105, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 105, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 105, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 105, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 106, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 106, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 106, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 106, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 106, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 106, 87);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 107, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 107, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 107, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 107, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 107, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 107, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 108, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 108, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 108, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 108, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 108, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 108, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 109, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 109, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 109, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 109, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 109, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 109, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 110, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 110, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 110, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 110, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 110, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 110, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 111, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 111, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 111, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 111, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 111, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 111, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 112, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 112, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 112, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 112, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 112, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 112, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 113, 250);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 113, 5);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 113, 5);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 113, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 113, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 113, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 114, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 114, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 114, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 114, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 114, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 114, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 115, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 115, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 115, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 115, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 115, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 115, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 116, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 116, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 116, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 116, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 116, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 116, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 117, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 117, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 117, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 117, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 117, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 117, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 118, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 118, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 118, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 118, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 118, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 118, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 119, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 119, 92);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 119, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 119, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 119, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 119, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 120, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 120, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 120, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 120, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 120, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 120, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 121, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 121, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 121, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 121, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 121, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 121, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 122, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 122, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 122, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 122, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 122, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 122, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 123, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 123, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 123, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 123, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 123, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 123, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 124, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 124, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 124, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 124, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 124, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 124, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 125, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 125, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 125, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 125, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 125, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 125, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 126, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 126, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 126, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 126, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 126, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 126, 93);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 127, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 127, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 127, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 127, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 127, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 127, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 128, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 128, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 128, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 128, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 128, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 128, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 129, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 129, 10);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 129, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 129, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 129, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 129, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 130, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 130, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 130, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 130, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 130, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 130, 81);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 131, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 131, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 131, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 131, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 131, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 131, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 132, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 132, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 132, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 132, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 132, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 132, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 133, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 133, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 133, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 133, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 133, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 133, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 134, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 134, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 134, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 134, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 134, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 134, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 135, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 135, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 135, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 135, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 135, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 135, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 136, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 136, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 136, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 136, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 136, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 136, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 137, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 137, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 137, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 137, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 137, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 137, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 138, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 138, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 138, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 138, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 138, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 138, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 139, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 139, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 139, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 139, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 139, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 139, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 140, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 140, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 140, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 140, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 140, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 140, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 141, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 141, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 141, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 141, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 141, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 141, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 142, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 142, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 142, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 142, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 142, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 142, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 143, 160);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 143, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 143, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 143, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 143, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 143, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 144, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 144, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 144, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 144, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 144, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 144, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 145, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 145, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 145, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 145, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 145, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 145, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 146, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 146, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 146, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 146, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 146, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 146, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 147, 41);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 147, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 147, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 147, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 147, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 147, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 148, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 148, 84);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 148, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 148, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 148, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 148, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 149, 91);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 149, 134);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 149, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 149, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 149, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 149, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 150, 106);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 150, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 150, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 150, 154);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 150, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 150, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 151, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 151, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 151, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 151, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 151, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 151, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 152, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 152, 49);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 152, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 152, 49);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 152, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 152, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 153, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 153, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 153, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 153, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 153, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 153, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 154, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 154, 82);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 154, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 154, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 154, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 154, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 155, 39);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 155, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 155, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 155, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 155, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 155, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 156, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 156, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 156, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 156, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 156, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 156, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 157, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 157, 84);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 157, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 157, 109);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 157, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 157, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 158, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 158, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 158, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 158, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 158, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 158, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 159, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 159, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 159, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 159, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 159, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 159, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 160, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 160, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 160, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 160, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 160, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 160, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 161, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 161, 46);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 161, 34);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 161, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 161, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 161, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 162, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 162, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 162, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 162, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 162, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 162, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 163, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 163, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 163, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 163, 36);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 163, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 163, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 164, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 164, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 164, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 164, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 164, 96);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 164, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 165, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 165, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 165, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 165, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 165, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 165, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 166, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 166, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 166, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 166, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 166, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 166, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 167, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 167, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 167, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 167, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 167, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 167, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 168, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 168, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 168, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 168, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 168, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 168, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 169, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 169, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 169, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 169, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 169, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 169, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 170, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 170, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 170, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 170, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 170, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 170, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 171, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 171, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 171, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 171, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 171, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 171, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 172, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 172, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 172, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 172, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 172, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 172, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 173, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 173, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 173, 28);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 173, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 173, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 173, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 174, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 174, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 174, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 174, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 174, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 174, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 175, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 175, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 175, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 175, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 175, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 175, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 176, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 176, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 176, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 176, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 176, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 176, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 177, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 177, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 177, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 177, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 177, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 177, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 178, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 178, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 178, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 178, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 178, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 178, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 179, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 179, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 179, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 179, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 179, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 179, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 180, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 180, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 180, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 180, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 180, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 180, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 181, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 181, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 181, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 181, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 181, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 181, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 182, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 182, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 182, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 182, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 182, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 182, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 183, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 183, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 183, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 183, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 183, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 183, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 184, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 184, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 184, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 184, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 184, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 184, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 185, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 185, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 185, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 185, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 185, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 185, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 186, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 186, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 186, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 186, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 186, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 186, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 187, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 187, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 187, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 187, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 187, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 187, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 188, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 188, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 188, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 188, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 188, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 188, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 189, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 189, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 189, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 189, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 189, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 189, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 190, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 190, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 190, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 190, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 190, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 190, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 191, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 191, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 191, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 191, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 191, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 191, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 192, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 192, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 192, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 192, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 192, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 192, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 193, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 193, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 193, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 193, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 193, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 193, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 194, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 194, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 194, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 194, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 194, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 194, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 195, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 195, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 195, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 195, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 195, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 195, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 196, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 196, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 196, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 196, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 196, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 196, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 197, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 197, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 197, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 197, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 197, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 197, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 198, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 198, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 198, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 198, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 198, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 198, 91);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 199, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 199, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 199, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 199, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 199, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 199, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 200, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 200, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 200, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 200, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 200, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 200, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 201, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 201, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 201, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 201, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 201, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 201, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 202, 190);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 202, 33);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 202, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 202, 33);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 202, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 202, 33);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 203, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 203, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 203, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 203, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 203, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 203, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 204, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 204, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 204, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 204, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 204, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 204, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 205, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 205, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 205, 140);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 205, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 205, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 205, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 206, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 206, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 206, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 206, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 206, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 206, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 207, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 207, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 207, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 207, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 207, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 207, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 208, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 208, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 208, 200);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 208, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 208, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 208, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 209, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 209, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 209, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 209, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 209, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 209, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 210, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 210, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 210, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 210, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 210, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 210, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 211, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 211, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 211, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 211, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 211, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 211, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 212, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 212, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 212, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 212, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 212, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 212, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 213, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 213, 10);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 213, 230);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 213, 10);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 213, 230);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 213, 5);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 214, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 214, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 214, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 214, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 214, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 214, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 215, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 215, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 215, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 215, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 215, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 215, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 216, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 216, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 216, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 216, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 216, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 216, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 217, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 217, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 217, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 217, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 217, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 217, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 218, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 218, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 218, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 218, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 218, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 218, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 219, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 219, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 219, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 219, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 219, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 219, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 220, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 220, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 220, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 220, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 220, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 220, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 221, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 221, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 221, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 221, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 221, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 221, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 222, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 222, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 222, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 222, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 222, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 222, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 223, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 223, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 223, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 223, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 223, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 223, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 224, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 224, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 224, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 224, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 224, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 224, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 225, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 225, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 225, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 225, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 225, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 225, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 226, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 226, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 226, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 226, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 226, 140);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 226, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 227, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 227, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 227, 140);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 227, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 227, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 227, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 228, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 228, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 228, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 228, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 228, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 228, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 229, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 229, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 229, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 229, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 229, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 229, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 230, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 230, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 230, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 230, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 230, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 230, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 231, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 231, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 231, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 231, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 231, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 231, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 232, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 232, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 232, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 232, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 232, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 232, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 233, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 233, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 233, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 233, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 233, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 233, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 234, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 234, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 234, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 234, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 234, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 234, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 235, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 235, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 235, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 235, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 235, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 235, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 236, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 236, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 236, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 236, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 236, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 236, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 237, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 237, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 237, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 237, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 237, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 237, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 238, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 238, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 238, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 238, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 238, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 238, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 239, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 239, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 239, 37);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 239, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 239, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 239, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 240, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 240, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 240, 37);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 240, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 240, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 240, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 241, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 241, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 241, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 241, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 241, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 241, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 242, 255);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 242, 10);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 242, 10);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 242, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 242, 135);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 242, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 243, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 243, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 243, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 243, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 243, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 243, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 244, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 244, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 244, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 244, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 244, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 244, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 245, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 245, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 245, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 245, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 245, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 245, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 246, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 246, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 246, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 246, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 246, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 246, 41);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 247, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 247, 84);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 247, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 247, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 247, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 247, 51);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 248, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 248, 134);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 248, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 248, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 248, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 248, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 249, 106);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 249, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 249, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 249, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 249, 154);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 249, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 250, 106);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 250, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 250, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 250, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 250, 154);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 250, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 251, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 251, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 251, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 251, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 251, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 251, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 252, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 252, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 252, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 252, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 252, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 252, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 253, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 253, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 253, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 253, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 253, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 253, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 254, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 254, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 254, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 254, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 254, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 254, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 255, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 255, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 255, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 255, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 255, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 255, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 256, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 256, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 256, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 256, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 256, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 256, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 257, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 257, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 257, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 257, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 257, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 257, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 258, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 258, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 258, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 258, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 258, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 258, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 259, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 259, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 259, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 259, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 259, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 259, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 260, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 260, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 260, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 260, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 260, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 260, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 261, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 261, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 261, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 261, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 261, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 261, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 262, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 262, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 262, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 262, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 262, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 262, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 263, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 263, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 263, 41);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 263, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 263, 41);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 263, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 264, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 264, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 264, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 264, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 264, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 264, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 265, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 265, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 265, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 265, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 265, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 265, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 266, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 266, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 266, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 266, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 266, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 266, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 267, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 267, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 267, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 267, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 267, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 267, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 268, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 268, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 268, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 268, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 268, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 268, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 269, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 269, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 269, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 269, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 269, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 269, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 270, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 270, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 270, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 270, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 270, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 270, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 271, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 271, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 271, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 271, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 271, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 271, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 272, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 272, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 272, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 272, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 272, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 272, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 273, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 273, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 273, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 273, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 273, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 273, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 274, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 274, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 274, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 274, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 274, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 274, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 275, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 275, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 275, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 275, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 275, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 275, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 276, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 276, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 276, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 276, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 276, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 276, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 277, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 277, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 277, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 277, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 277, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 277, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 278, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 278, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 278, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 278, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 278, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 278, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 279, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 279, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 279, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 279, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 279, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 279, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 280, 28);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 280, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 280, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 280, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 280, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 280, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 281, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 281, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 281, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 281, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 281, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 281, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 282, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 282, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 282, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 282, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 282, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 282, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 283, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 283, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 283, 32);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 283, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 283, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 283, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 284, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 284, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 284, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 284, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 284, 82);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 284, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 285, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 285, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 285, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 285, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 285, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 285, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 286, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 286, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 286, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 286, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 286, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 286, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 287, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 287, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 287, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 287, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 287, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 287, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 288, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 288, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 288, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 288, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 288, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 288, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 289, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 289, 160);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 289, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 289, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 289, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 289, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 290, 31);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 290, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 290, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 290, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 290, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 290, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 291, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 291, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 291, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 291, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 291, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 291, 160);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 292, 1);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 292, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 292, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 292, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 292, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 292, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 293, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 293, 51);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 293, 23);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 293, 51);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 293, 23);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 293, 28);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 294, 84);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 294, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 294, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 294, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 294, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 294, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 295, 104);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 295, 91);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 295, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 295, 91);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 295, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 295, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 296, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 296, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 296, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 296, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 296, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 296, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 297, 144);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 297, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 297, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 297, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 297, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 297, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 298, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 298, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 298, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 298, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 298, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 298, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 299, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 299, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 299, 135);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 299, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 299, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 299, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 300, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 300, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 300, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 300, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 300, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 300, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 301, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 301, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 301, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 301, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 301, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 301, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 302, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 302, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 302, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 302, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 302, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 302, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 303, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 303, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 303, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 303, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 303, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 303, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 304, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 304, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 304, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 304, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 304, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 304, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 305, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 305, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 305, 140);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 305, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 305, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 305, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 306, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 306, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 306, 180);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 306, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 306, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 306, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 307, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 307, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 307, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 307, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 307, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 307, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 308, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 308, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 308, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 308, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 308, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 308, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 309, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 309, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 309, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 309, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 309, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 309, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 310, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 310, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 310, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 310, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 310, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 310, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 311, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 311, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 311, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 311, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 311, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 311, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 312, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 312, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 312, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 312, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 312, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 312, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 313, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 313, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 313, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 313, 47);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 313, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 313, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 314, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 314, 47);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 314, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 314, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 314, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 314, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 315, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 315, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 315, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 315, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 315, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 315, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 316, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 316, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 316, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 316, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 316, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 316, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 317, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 317, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 317, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 317, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 317, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 317, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 318, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 318, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 318, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 318, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 318, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 318, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 319, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 319, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 319, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 319, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 319, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 319, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 320, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 320, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 320, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 320, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 320, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 320, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 321, 170);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 321, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 321, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 321, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 321, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 321, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 322, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 322, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 322, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 322, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 322, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 322, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 323, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 323, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 323, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 323, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 323, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 323, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 324, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 324, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 324, 140);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 324, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 324, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 324, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 325, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 325, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 325, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 325, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 325, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 325, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 326, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 326, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 326, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 326, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 326, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 326, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 327, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 327, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 327, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 327, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 327, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 327, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 328, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 328, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 328, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 328, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 328, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 328, 10);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 329, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 329, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 329, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 329, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 329, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 329, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 330, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 330, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 330, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 330, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 330, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 330, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 331, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 331, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 331, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 331, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 331, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 331, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 332, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 332, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 332, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 332, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 332, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 332, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 333, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 333, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 333, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 333, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 333, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 333, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 334, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 334, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 334, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 334, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 334, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 334, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 335, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 335, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 335, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 335, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 335, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 335, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 336, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 336, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 336, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 336, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 336, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 336, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 337, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 337, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 337, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 337, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 337, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 337, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 338, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 338, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 338, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 338, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 338, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 338, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 339, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 339, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 339, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 339, 46);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 339, 41);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 339, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 340, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 340, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 340, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 340, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 340, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 340, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 341, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 341, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 341, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 341, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 341, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 341, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 342, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 342, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 342, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 342, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 342, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 342, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 343, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 343, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 343, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 343, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 343, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 343, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 344, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 344, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 344, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 344, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 344, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 344, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 345, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 345, 41);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 345, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 345, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 345, 87);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 345, 23);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 346, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 346, 81);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 346, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 346, 81);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 346, 107);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 346, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 347, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 347, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 347, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 347, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 347, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 347, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 348, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 348, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 348, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 348, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 348, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 348, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 349, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 349, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 349, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 349, 10);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 349, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 349, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 350, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 350, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 350, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 350, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 350, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 350, 81);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 351, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 351, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 351, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 351, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 351, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 351, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 352, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 352, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 352, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 352, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 352, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 352, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 353, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 353, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 353, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 353, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 353, 33);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 353, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 354, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 354, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 354, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 354, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 354, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 354, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 355, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 355, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 355, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 355, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 355, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 355, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 356, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 356, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 356, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 356, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 356, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 356, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 357, 99);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 357, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 357, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 357, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 357, 87);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 357, 51);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 358, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 358, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 358, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 358, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 358, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 358, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 359, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 359, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 359, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 359, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 359, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 359, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 360, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 360, 23);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 360, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 360, 23);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 360, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 360, 23);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 361, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 361, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 361, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 361, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 361, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 361, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 362, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 362, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 362, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 362, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 362, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 362, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 363, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 363, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 363, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 363, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 363, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 363, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 364, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 364, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 364, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 364, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 364, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 364, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 365, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 365, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 365, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 365, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 365, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 365, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 366, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 366, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 366, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 366, 74);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 366, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 366, 32);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 367, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 367, 104);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 367, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 367, 94);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 367, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 367, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 368, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 368, 84);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 368, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 368, 114);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 368, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 368, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 369, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 369, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 369, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 369, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 369, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 369, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 370, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 370, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 370, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 370, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 370, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 370, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 371, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 371, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 371, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 371, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 371, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 371, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 372, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 372, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 372, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 372, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 372, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 372, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 373, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 373, 135);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 373, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 373, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 373, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 373, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 374, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 374, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 374, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 374, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 374, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 374, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 375, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 375, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 375, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 375, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 375, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 375, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 376, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 376, 135);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 376, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 376, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 376, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 376, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 377, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 377, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 377, 200);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 377, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 377, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 377, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 378, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 378, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 378, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 378, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 378, 200);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 378, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 379, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 379, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 379, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 379, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 379, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 379, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 380, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 380, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 380, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 380, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 380, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 380, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 381, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 381, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 381, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 381, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 381, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 381, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 382, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 382, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 382, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 382, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 382, 140);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 382, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 383, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 383, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 383, 140);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 383, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 383, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 383, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 384, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 384, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 384, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 384, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 384, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 384, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 385, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 385, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 385, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 385, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 385, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 385, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 386, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 386, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 386, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 386, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 386, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 386, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 387, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 387, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 387, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 387, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 387, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 387, 31);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 388, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 388, 89);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 388, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 388, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 388, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 388, 36);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 389, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 389, 109);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 389, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 389, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 389, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 389, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 390, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 390, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 390, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 390, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 390, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 390, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 391, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 391, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 391, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 391, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 391, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 391, 81);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 392, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 392, 104);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 392, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 392, 104);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 392, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 392, 108);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 393, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 393, 51);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 393, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 393, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 393, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 393, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 394, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 394, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 394, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 394, 81);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 394, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 394, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 395, 84);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 395, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 395, 88);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 395, 111);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 395, 101);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 395, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 396, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 396, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 396, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 396, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 396, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 396, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 397, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 397, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 397, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 397, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 397, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 397, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 398, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 398, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 398, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 398, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 398, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 398, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 399, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 399, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 399, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 399, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 399, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 399, 31);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 400, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 400, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 400, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 400, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 400, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 400, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 401, 37);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 401, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 401, 41);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 401, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 401, 41);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 401, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 402, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 402, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 402, 51);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 402, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 402, 51);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 402, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 403, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 403, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 403, 34);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 403, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 403, 34);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 403, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 404, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 404, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 404, 49);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 404, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 404, 49);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 404, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 405, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 405, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 405, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 405, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 405, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 405, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 406, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 406, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 406, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 406, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 406, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 406, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 407, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 407, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 407, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 407, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 407, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 407, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 408, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 408, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 408, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 408, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 408, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 408, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 409, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 409, 165);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 409, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 409, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 409, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 409, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 410, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 410, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 410, 118);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 410, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 410, 88);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 410, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 411, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 411, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 411, 168);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 411, 47);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 411, 138);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 411, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 412, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 412, 29);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 412, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 412, 29);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 412, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 412, 36);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 413, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 413, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 413, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 413, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 413, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 413, 36);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 414, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 414, 94);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 414, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 414, 94);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 414, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 414, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 415, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 415, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 415, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 415, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 415, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 415, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 416, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 416, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 416, 102);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 416, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 416, 102);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 416, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 417, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 417, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 417, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 417, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 417, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 417, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 418, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 418, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 418, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 418, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 418, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 418, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 419, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 419, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 419, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 419, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 419, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 419, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 420, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 420, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 420, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 420, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 420, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 420, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 421, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 421, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 421, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 421, 87);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 421, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 421, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 422, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 422, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 422, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 422, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 422, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 422, 34);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 423, 111);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 423, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 423, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 423, 92);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 423, 82);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 423, 39);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 424, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 424, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 424, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 424, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 424, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 424, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 425, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 425, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 425, 34);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 425, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 425, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 425, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 426, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 426, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 426, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 426, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 426, 54);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 426, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 427, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 427, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 427, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 427, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 427, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 427, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 428, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 428, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 428, 84);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 428, 54);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 428, 96);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 428, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 429, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 429, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 429, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 429, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 429, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 429, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 430, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 430, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 430, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 430, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 430, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 430, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 431, 49);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 431, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 431, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 431, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 431, 37);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 431, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 432, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 432, 82);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 432, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 432, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 432, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 432, 112);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 433, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 433, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 433, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 433, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 433, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 433, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 434, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 434, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 434, 47);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 434, 41);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 434, 41);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 434, 74);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 435, 103);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 435, 93);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 435, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 435, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 435, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 435, 84);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 436, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 436, 24);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 436, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 436, 24);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 436, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 436, 23);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 437, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 437, 89);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 437, 116);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 437, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 437, 116);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 437, 33);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 438, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 438, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 438, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 438, 10);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 438, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 438, 10);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 439, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 439, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 439, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 439, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 439, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 439, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 440, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 440, 5);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 440, 5);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 440, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 440, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 440, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 441, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 441, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 441, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 441, 92);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 441, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 441, 91);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 442, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 442, 92);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 442, 108);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 442, 92);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 442, 108);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 442, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 443, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 443, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 443, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 443, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 443, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 443, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 444, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 444, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 444, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 444, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 444, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 444, 82);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 445, 108);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 445, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 445, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 445, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 445, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 445, 102);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 446, 135);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 446, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 446, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 446, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 446, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 446, 5);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 447, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 447, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 447, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 447, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 447, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 447, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 448, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 448, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 448, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 448, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 448, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 448, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 449, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 449, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 449, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 449, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 449, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 449, 32);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 450, 108);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 450, 112);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 450, 118);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 450, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 450, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 450, 47);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 451, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 451, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 451, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 451, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 451, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 451, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 452, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 452, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 452, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 452, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 452, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 452, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 453, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 453, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 453, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 453, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 453, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 453, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 454, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 454, 106);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 454, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 454, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 454, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 454, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 455, 74);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 455, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 455, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 455, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 455, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 455, 46);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 456, 49);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 456, 49);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 456, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 456, 49);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 456, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 456, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 457, 69);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 457, 69);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 457, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 457, 69);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 457, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 457, 91);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 458, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 458, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 458, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 458, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 458, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 458, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 459, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 459, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 459, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 459, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 459, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 459, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 460, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 460, 92);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 460, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 460, 92);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 460, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 460, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 461, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 461, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 461, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 461, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 461, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 461, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 462, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 462, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 462, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 462, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 462, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 462, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 463, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 463, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 463, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 463, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 463, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 463, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 464, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 464, 140);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 464, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 464, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 464, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 464, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 465, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 465, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 465, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 465, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 465, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 465, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 466, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 466, 123);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 466, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 466, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 466, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 466, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 467, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 467, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 467, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 467, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 467, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 467, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 468, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 468, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 468, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 468, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 468, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 468, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 469, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 469, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 469, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 469, 116);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 469, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 469, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 470, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 470, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 470, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 470, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 470, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 470, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 471, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 471, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 471, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 471, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 471, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 471, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 472, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 472, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 472, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 472, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 472, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 472, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 473, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 473, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 473, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 473, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 473, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 473, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 474, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 474, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 474, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 474, 135);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 474, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 474, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 475, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 475, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 475, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 475, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 475, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 475, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 476, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 476, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 476, 145);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 476, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 476, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 476, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 477, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 477, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 477, 135);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 477, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 477, 135);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 477, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 478, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 478, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 478, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 478, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 478, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 478, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 479, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 479, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 479, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 479, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 479, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 479, 91);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 480, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 480, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 480, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 480, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 480, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 480, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 481, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 481, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 481, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 481, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 481, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 481, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 482, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 482, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 482, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 482, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 482, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 482, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 483, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 483, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 483, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 483, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 483, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 483, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 484, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 484, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 484, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 484, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 484, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 484, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 485, 91);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 485, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 485, 106);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 485, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 485, 106);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 485, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 486, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 486, 160);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 486, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 486, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 486, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 486, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 487, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 487, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 487, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 487, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 487, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 487, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 488, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 488, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 488, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 488, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 488, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 488, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 489, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 489, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 489, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 489, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 489, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 489, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 490, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 490, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 490, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 490, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 490, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 490, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 491, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 491, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 491, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 491, 135);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 491, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 491, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 492, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 492, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 492, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 492, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 492, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 492, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 493, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 493, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 493, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 493, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 493, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 493, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 494, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 494, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 494, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 494, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 494, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 494, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 495, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 495, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 495, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 495, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 495, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 495, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 496, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 496, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 496, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 496, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 496, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 496, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 497, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 497, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 497, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 497, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 497, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 497, 113);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 498, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 498, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 498, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 498, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 498, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 498, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 499, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 499, 93);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 499, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 499, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 499, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 499, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 500, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 500, 123);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 500, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 500, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 500, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 500, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 501, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 501, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 501, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 501, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 501, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 501, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 502, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 502, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 502, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 502, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 502, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 502, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 503, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 503, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 503, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 503, 108);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 503, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 503, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 504, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 504, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 504, 39);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 504, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 504, 39);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 504, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 505, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 505, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 505, 69);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 505, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 505, 69);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 505, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 506, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 506, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 506, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 506, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 506, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 506, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 507, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 507, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 507, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 507, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 507, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 507, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 508, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 508, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 508, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 508, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 508, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 508, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 509, 41);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 509, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 509, 37);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 509, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 509, 37);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 509, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 510, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 510, 88);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 510, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 510, 88);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 510, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 510, 106);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 511, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 511, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 511, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 511, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 511, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 511, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 512, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 512, 98);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 512, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 512, 98);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 512, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 512, 101);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 513, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 513, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 513, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 513, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 513, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 513, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 514, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 514, 98);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 514, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 514, 98);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 514, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 514, 101);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 515, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 515, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 515, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 515, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 515, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 515, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 516, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 516, 98);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 516, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 516, 98);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 516, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 516, 101);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 517, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 517, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 517, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 517, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 517, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 517, 24);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 518, 116);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 518, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 518, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 518, 107);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 518, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 518, 29);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 519, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 519, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 519, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 519, 36);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 519, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 519, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 520, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 520, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 520, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 520, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 520, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 520, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 521, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 521, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 521, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 521, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 521, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 521, 93);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 522, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 522, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 522, 32);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 522, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 522, 32);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 522, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 523, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 523, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 523, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 523, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 523, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 523, 116);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 524, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 524, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 524, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 524, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 524, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 524, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 525, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 525, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 525, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 525, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 525, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 525, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 526, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 526, 135);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 526, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 526, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 526, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 526, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 527, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 527, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 527, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 527, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 527, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 527, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 528, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 528, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 528, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 528, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 528, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 528, 114);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 529, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 529, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 529, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 529, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 529, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 529, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 530, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 530, 135);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 530, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 530, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 530, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 530, 88);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 531, 103);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 531, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 531, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 531, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 531, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 531, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 532, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 532, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 532, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 532, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 532, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 532, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 533, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 533, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 533, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 533, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 533, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 533, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 534, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 534, 140);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 534, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 534, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 534, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 534, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 535, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 535, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 535, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 535, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 535, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 535, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 536, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 536, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 536, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 536, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 536, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 536, 69);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 537, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 537, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 537, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 537, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 537, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 537, 74);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 538, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 538, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 538, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 538, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 538, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 538, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 539, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 539, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 539, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 539, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 539, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 539, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 540, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 540, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 540, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 540, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 540, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 540, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 541, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 541, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 541, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 541, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 541, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 541, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 542, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 542, 103);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 542, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 542, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 542, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 542, 92);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 543, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 543, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 543, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 543, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 543, 39);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 543, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 544, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 544, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 544, 99);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 544, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 544, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 544, 47);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 545, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 545, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 545, 89);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 545, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 545, 69);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 545, 112);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 546, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 546, 27);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 546, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 546, 37);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 546, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 546, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 547, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 547, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 547, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 547, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 547, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 547, 116);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 548, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 548, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 548, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 548, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 548, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 548, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 549, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 549, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 549, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 549, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 549, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 549, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 550, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 550, 92);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 550, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 550, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 550, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 550, 98);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 551, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 551, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 551, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 551, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 551, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 551, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 552, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 552, 82);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 552, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 552, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 552, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 552, 74);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 553, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 553, 117);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 553, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 553, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 553, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 553, 92);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 554, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 554, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 554, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 554, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 554, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 554, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 555, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 555, 140);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 555, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 555, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 555, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 555, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 556, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 556, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 556, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 556, 106);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 556, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 556, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 557, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 557, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 557, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 557, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 557, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 557, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 558, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 558, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 558, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 558, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 558, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 558, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 559, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 559, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 559, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 559, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 559, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 559, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 560, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 560, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 560, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 560, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 560, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 560, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 561, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 561, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 561, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 561, 103);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 561, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 561, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 562, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 562, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 562, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 562, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 562, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 562, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 563, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 563, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 563, 145);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 563, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 563, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 563, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 564, 54);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 564, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 564, 103);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 564, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 564, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 564, 22);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 565, 74);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 565, 108);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 565, 133);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 565, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 565, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 565, 32);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 566, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 566, 112);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 566, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 566, 74);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 566, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 566, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 567, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 567, 140);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 567, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 567, 112);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 567, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 567, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 568, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 568, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 568, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 568, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 568, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 568, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 569, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 569, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 569, 82);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 569, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 569, 82);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 569, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 570, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 570, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 570, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 570, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 570, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 570, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 571, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 571, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 571, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 571, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 571, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 571, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 572, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 572, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 572, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 572, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 572, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 572, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 573, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 573, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 573, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 573, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 573, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 573, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 574, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 574, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 574, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 574, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 574, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 574, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 575, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 575, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 575, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 575, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 575, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 575, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 576, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 576, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 576, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 576, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 576, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 576, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 577, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 577, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 577, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 577, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 577, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 577, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 578, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 578, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 578, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 578, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 578, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 578, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 579, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 579, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 579, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 579, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 579, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 579, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 580, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 580, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 580, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 580, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 580, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 580, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 581, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 581, 87);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 581, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 581, 87);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 581, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 581, 98);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 582, 36);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 582, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 582, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 582, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 582, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 582, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 583, 51);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 583, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 583, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 583, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 583, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 583, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 584, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 584, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 584, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 584, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 584, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 584, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 585, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 585, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 585, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 585, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 585, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 585, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 586, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 586, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 586, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 586, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 586, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 586, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 587, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 587, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 587, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 587, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 587, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 587, 103);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 588, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 588, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 588, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 588, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 588, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 588, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 589, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 589, 135);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 589, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 589, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 589, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 589, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 590, 69);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 590, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 590, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 590, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 590, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 590, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 591, 114);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 591, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 591, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 591, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 591, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 591, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 592, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 592, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 592, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 592, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 592, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 592, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 593, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 593, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 593, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 593, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 593, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 593, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 594, 165);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 594, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 594, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 594, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 594, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 594, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 595, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 595, 47);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 595, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 595, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 595, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 595, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 596, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 596, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 596, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 596, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 596, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 596, 108);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 597, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 597, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 597, 91);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 597, 24);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 597, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 597, 10);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 598, 74);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 598, 94);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 598, 131);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 598, 54);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 598, 116);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 598, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 599, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 599, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 599, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 599, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 599, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 599, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 600, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 600, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 600, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 600, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 600, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 600, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 601, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 601, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 601, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 601, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 601, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 601, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 602, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 602, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 602, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 602, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 602, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 602, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 603, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 603, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 603, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 603, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 603, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 603, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 604, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 604, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 604, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 604, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 604, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 604, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 605, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 605, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 605, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 605, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 605, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 605, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 606, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 606, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 606, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 606, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 606, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 606, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 607, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 607, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 607, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 607, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 607, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 607, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 608, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 608, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 608, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 608, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 608, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 608, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 609, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 609, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 609, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 609, 145);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 609, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 609, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 610, 46);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 610, 87);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 610, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 610, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 610, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 610, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 611, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 611, 117);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 611, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 611, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 611, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 611, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 612, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 612, 147);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 612, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 612, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 612, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 612, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 613, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 613, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 613, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 613, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 613, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 613, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 614, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 614, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 614, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 614, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 614, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 614, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 615, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 615, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 615, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 615, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 615, 135);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 615, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 616, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 616, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 616, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 616, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 616, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 616, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 617, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 617, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 617, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 617, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 617, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 617, 145);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 618, 109);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 618, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 618, 84);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 618, 81);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 618, 99);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 618, 32);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 619, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 619, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 619, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 619, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 619, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 619, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 620, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 620, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 620, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 620, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 620, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 620, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 621, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 621, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 621, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 621, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 621, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 621, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 622, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 622, 74);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 622, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 622, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 622, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 622, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 623, 89);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 623, 124);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 623, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 623, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 623, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 623, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 624, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 624, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 624, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 624, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 624, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 624, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 625, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 625, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 625, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 625, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 625, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 625, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 626, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 626, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 626, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 626, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 626, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 626, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 627, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 627, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 627, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 627, 37);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 627, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 627, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 628, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 628, 123);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 628, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 628, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 628, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 628, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 629, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 629, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 629, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 629, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 629, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 629, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 630, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 630, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 630, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 630, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 630, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 630, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 631, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 631, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 631, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 631, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 631, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 631, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 632, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 632, 109);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 632, 112);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 632, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 632, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 632, 109);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 633, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 633, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 633, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 633, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 633, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 633, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 634, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 634, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 634, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 634, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 634, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 634, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 635, 92);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 635, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 635, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 635, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 635, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 635, 98);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 636, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 636, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 636, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 636, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 636, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 636, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 637, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 637, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 637, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 637, 135);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 637, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 637, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 638, 91);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 638, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 638, 129);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 638, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 638, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 638, 108);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 639, 91);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 639, 129);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 639, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 639, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 639, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 639, 108);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 640, 91);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 640, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 640, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 640, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 640, 129);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 640, 108);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 641, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 641, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 641, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 641, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 641, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 641, 111);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 642, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 642, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 642, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 642, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 642, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 642, 111);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 643, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 643, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 643, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 643, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 643, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 643, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 644, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 644, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 644, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 644, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 644, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 644, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 645, 89);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 645, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 645, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 645, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 645, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 645, 101);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 646, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 646, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 646, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 646, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 646, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 646, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 647, 91);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 647, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 647, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 647, 129);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 647, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 647, 108);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 648, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 648, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 648, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 648, 128);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 648, 128);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 648, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 649, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 649, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 649, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 649, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 649, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 649, 99);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 650, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 650, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 650, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 650, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 650, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 650, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 651, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 651, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 651, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 651, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 651, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 651, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 652, 88);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 652, 107);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 652, 122);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 652, 74);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 652, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 652, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 653, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 653, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 653, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 653, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 653, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 653, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 654, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 654, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 654, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 654, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 654, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 654, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 655, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 655, 69);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 655, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 655, 114);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 655, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 655, 104);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 656, 41);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 656, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 656, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 656, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 656, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 656, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 657, 54);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 657, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 657, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 657, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 657, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 657, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 658, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 658, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 658, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 658, 103);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 658, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 658, 122);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 659, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 659, 36);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 659, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 659, 32);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 659, 36);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 659, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 660, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 660, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 660, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 660, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 660, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 660, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 661, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 661, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 661, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 661, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 661, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 661, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 662, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 662, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 662, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 662, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 662, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 662, 84);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 663, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 663, 81);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 663, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 663, 74);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 663, 69);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 663, 126);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 664, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 664, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 664, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 664, 27);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 664, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 664, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 665, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 665, 22);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 665, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 665, 27);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 665, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 665, 29);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 666, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 666, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 666, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 666, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 666, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 666, 89);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 667, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 667, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 667, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 667, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 667, 54);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 667, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 668, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 668, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 668, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 668, 109);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 668, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 668, 106);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 669, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 669, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 669, 39);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 669, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 669, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 669, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 670, 54);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 670, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 670, 47);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 670, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 670, 98);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 670, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 671, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 671, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 671, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 671, 112);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 671, 154);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 671, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 672, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 672, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 672, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 672, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 672, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 672, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 673, 123);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 673, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 673, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 673, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 673, 81);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 673, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 674, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 674, 82);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 674, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 674, 46);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 674, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 674, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 675, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 675, 124);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 675, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 675, 69);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 675, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 675, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 676, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 676, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 676, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 676, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 676, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 676, 102);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 677, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 677, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 677, 54);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 677, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 677, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 677, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 678, 74);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 678, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 678, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 678, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 678, 81);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 678, 104);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 679, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 679, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 679, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 679, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 679, 37);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 679, 28);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 680, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 680, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 680, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 680, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 680, 49);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 680, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 681, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 681, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 681, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 681, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 681, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 681, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 682, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 682, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 682, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 682, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 682, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 682, 23);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 683, 101);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 683, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 683, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 683, 99);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 683, 89);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 683, 29);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 684, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 684, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 684, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 684, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 684, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 684, 49);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 685, 82);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 685, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 685, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 685, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 685, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 685, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 686, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 686, 54);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 686, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 686, 37);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 686, 46);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 686, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 687, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 687, 92);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 687, 88);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 687, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 687, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 687, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 688, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 688, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 688, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 688, 39);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 688, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 688, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 689, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 689, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 689, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 689, 54);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 689, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 689, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 690, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 690, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 690, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 690, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 690, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 690, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 691, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 691, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 691, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 691, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 691, 123);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 691, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 692, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 692, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 692, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 692, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 692, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 692, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 693, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 693, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 693, 88);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 693, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 693, 89);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 693, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 694, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 694, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 694, 33);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 694, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 694, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 694, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 695, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 695, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 695, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 695, 109);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 695, 94);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 695, 109);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 696, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 696, 89);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 696, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 696, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 696, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 696, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 697, 82);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 697, 121);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 697, 119);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 697, 69);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 697, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 697, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 698, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 698, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 698, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 698, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 698, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 698, 46);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 699, 123);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 699, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 699, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 699, 99);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 699, 92);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 699, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 700, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 700, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 700, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 700, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 700, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 700, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 701, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 701, 92);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 701, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 701, 74);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 701, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 701, 118);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 702, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 702, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 702, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 702, 81);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 702, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 702, 101);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 703, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 703, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 703, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 703, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 703, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 703, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 704, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 704, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 704, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 704, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 704, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 704, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 705, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 705, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 705, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 705, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 705, 113);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 705, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 706, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 706, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 706, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 706, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 706, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 706, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 707, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 707, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 707, 91);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 707, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 707, 87);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 707, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 708, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 708, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 708, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 708, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 708, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 708, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 709, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 709, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 709, 76);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 709, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 709, 82);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 709, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 710, 49);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 710, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 710, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 710, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 710, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 710, 51);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 711, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 711, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 711, 122);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 711, 58);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 711, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 711, 84);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 712, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 712, 69);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 712, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 712, 32);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 712, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 712, 28);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 713, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 713, 117);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 713, 184);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 713, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 713, 46);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 713, 28);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 714, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 714, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 714, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 714, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 714, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 714, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 715, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 715, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 715, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 715, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 715, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 715, 123);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 716, 126);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 716, 131);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 716, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 716, 131);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 716, 98);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 716, 99);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 717, 126);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 717, 131);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 717, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 717, 131);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 717, 98);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 717, 99);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 718, 108);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 718, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 718, 121);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 718, 81);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 718, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 718, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 719, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 719, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 719, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 719, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 719, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 719, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 720, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 720, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 720, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 720, 150);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 720, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 720, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 721, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 721, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 721, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 721, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 721, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 721, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 722, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 722, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 722, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 722, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 722, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 722, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 723, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 723, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 723, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 723, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 723, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 723, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 724, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 724, 107);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 724, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 724, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 724, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 724, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 725, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 725, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 725, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 725, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 725, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 725, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 726, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 726, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 726, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 726, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 726, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 726, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 727, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 727, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 727, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 727, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 727, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 727, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 728, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 728, 54);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 728, 54);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 728, 66);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 728, 56);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 728, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 729, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 729, 69);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 729, 69);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 729, 91);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 729, 81);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 729, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 730, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 730, 74);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 730, 74);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 730, 126);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 730, 116);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 730, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 731, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 731, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 731, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 731, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 731, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 731, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 732, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 732, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 732, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 732, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 732, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 732, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 733, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 733, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 733, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 733, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 733, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 733, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 734, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 734, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 734, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 734, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 734, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 734, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 735, 88);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 735, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 735, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 735, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 735, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 735, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 736, 47);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 736, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 736, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 736, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 736, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 736, 46);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 737, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 737, 82);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 737, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 737, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 737, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 737, 36);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 738, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 738, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 738, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 738, 145);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 738, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 738, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 739, 47);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 739, 82);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 739, 57);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 739, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 739, 47);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 739, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 740, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 740, 132);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 740, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 740, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 740, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 740, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 741, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 741, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 741, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 741, 98);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 741, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 741, 93);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 742, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 742, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 742, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 742, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 742, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 742, 84);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 743, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 743, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 743, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 743, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 743, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 743, 124);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 744, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 744, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 744, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 744, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 744, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 744, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 745, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 745, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 745, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 745, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 745, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 745, 112);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 746, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 746, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 746, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 746, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 746, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 746, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 747, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 747, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 747, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 747, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 747, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 747, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 748, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 748, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 748, 152);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 748, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 748, 142);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 748, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 749, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 749, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 749, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 749, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 749, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 749, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 750, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 750, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 750, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 750, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 750, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 750, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 751, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 751, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 751, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 751, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 751, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 751, 27);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 752, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 752, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 752, 92);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 752, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 752, 132);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 752, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 753, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 753, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 753, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 753, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 753, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 753, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 754, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 754, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 754, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 754, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 754, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 754, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 755, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 755, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 755, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 755, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 755, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 755, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 756, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 756, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 756, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 756, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 756, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 756, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 757, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 757, 44);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 757, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 757, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 757, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 757, 77);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 758, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 758, 64);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 758, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 758, 111);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 758, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 758, 117);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 759, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 759, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 759, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 759, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 759, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 759, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 760, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 760, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 760, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 760, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 760, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 760, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 761, 42);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 761, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 761, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 761, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 761, 38);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 761, 32);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 762, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 762, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 762, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 762, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 762, 48);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 762, 62);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 763, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 763, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 763, 98);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 763, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 763, 98);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 763, 72);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 764, 51);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 764, 52);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 764, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 764, 82);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 764, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 764, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 765, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 765, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 765, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 765, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 765, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 765, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 766, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 766, 120);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 766, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 766, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 766, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 766, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 767, 25);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 767, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 767, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 767, 20);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 767, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 767, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 768, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 768, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 768, 140);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 768, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 768, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 768, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 769, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 769, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 769, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 769, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 769, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 769, 15);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 770, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 770, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 770, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 770, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 770, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 770, 35);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 771, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 771, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 771, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 771, 30);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 771, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 771, 5);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 772, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 772, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 772, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 772, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 772, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 772, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 773, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 773, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 773, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 773, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 773, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 773, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 774, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 774, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 774, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 774, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 774, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 774, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 775, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 775, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 775, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 775, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 775, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 775, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 776, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 776, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 776, 135);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 776, 91);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 776, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 776, 36);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 777, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 777, 98);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 777, 63);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 777, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 777, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 777, 96);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 778, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 778, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 778, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 778, 50);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 778, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 778, 96);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 779, 68);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 779, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 779, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 779, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 779, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 779, 92);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 780, 78);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 780, 60);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 780, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 780, 135);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 780, 91);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 780, 36);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 781, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 781, 131);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 781, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 781, 86);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 781, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 781, 40);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 782, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 782, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 782, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 782, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 782, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 782, 45);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 783, 55);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 783, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 783, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 783, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 783, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 783, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 784, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 784, 110);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 784, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 784, 100);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 784, 105);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 784, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 785, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 785, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 785, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 785, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 785, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 785, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 786, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 786, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 786, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 786, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 786, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 786, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 787, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 787, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 787, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 787, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 787, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 787, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 788, 70);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 788, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 788, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 788, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 788, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 788, 85);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 789, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 789, 29);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 789, 31);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 789, 29);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 789, 31);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 789, 37);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 790, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 790, 29);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 790, 131);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 790, 29);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 790, 131);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 790, 37);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 791, 137);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 791, 137);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 791, 107);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 791, 113);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 791, 89);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 791, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 792, 137);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 792, 113);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 792, 89);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 792, 137);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 792, 107);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 792, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 793, 109);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 793, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 793, 47);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 793, 127);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 793, 131);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 793, 103);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 794, 107);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 794, 139);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 794, 139);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 794, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 794, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 794, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 795, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 795, 137);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 795, 37);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 795, 137);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 795, 37);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 795, 151);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 796, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 796, 89);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 796, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 796, 173);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 796, 71);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 796, 83);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 797, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 797, 101);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 797, 103);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 797, 107);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 797, 101);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 797, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 798, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 798, 181);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 798, 131);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 798, 59);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 798, 31);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 798, 109);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 799, 223);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 799, 101);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 799, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 799, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 799, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 799, 43);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 800, 97);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 800, 107);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 800, 101);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 800, 127);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 800, 89);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 800, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 801, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 801, 95);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 801, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 801, 130);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 801, 115);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 801, 65);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 802, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 802, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 802, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 802, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 802, 90);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 802, 125);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 803, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 803, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 803, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 803, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 803, 67);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 803, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 804, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 804, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 804, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 804, 127);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 804, 73);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 804, 121);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 805, 61);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 805, 131);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 805, 211);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 805, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 805, 101);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 805, 13);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 806, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 806, 127);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 806, 53);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 806, 151);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 806, 79);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 806, 107);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (1, 807, 88);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (2, 807, 112);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (3, 807, 75);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (4, 807, 102);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (5, 807, 80);
INSERT INTO BASE_STAT(STAT_ID, POKEMON_ID, STAT_VALUE) VALUE (6, 807, 143);

INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 201, 'Unown A', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-a.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (2, 201, 'Unown B', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-b.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (3, 201, 'Unown C', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-c.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (4, 201, 'Unown D', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-d.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (5, 201, 'Unown E', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-e.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (6, 201, 'Unown F', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-f.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (7, 201, 'Unown G', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-g.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (8, 201, 'Unown H', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-h.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (9, 201, 'Unown I', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-i.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (10, 201, 'Unown J', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-j.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (11, 201, 'Unown K', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-k.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (12, 201, 'Unown L', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-l.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (13, 201, 'Unown M', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-m.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (14, 201, 'Unown N', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-n.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (15, 201, 'Unown O', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-o.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (16, 201, 'Unown P', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-p.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (17, 201, 'Unown Q', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-q.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (18, 201, 'Unown R', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-r.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (19, 201, 'Unown S', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-s.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (20, 201, 'Unown T', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-t.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (21, 201, 'Unown U', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-u.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (22, 201, 'Unown V', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-v.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (23, 201, 'Unown W', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-w.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (24, 201, 'Unown X', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-x.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (25, 201, 'Unown Y', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-y.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (26, 201, 'Unown Z', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-z.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (27, 201, 'Unown !', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-exclamation.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (28, 201, 'Unown ?', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/201-question.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 412, 'Plant Burmy', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/412-plant.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (2, 412, 'Sandy Burmy', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/412-sandy.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (3, 412, 'Trash Burmy', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/412-trash.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 414, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/414-plant.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 421, 'Overcast Cherrim', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/421-overcast.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (2, 421, 'Sunshine Cherrim', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/421-sunshine.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 422, 'West Shellos', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/422-west.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (2, 422, 'East Shellos', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/422-east.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 423, 'West Gastrodon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/423-west.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (2, 423, 'East Gastrodon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/423-east.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 493, 'Normal Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-normal.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (2, 493, 'Bug Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-bug.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (3, 493, 'Dark Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-dark.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (4, 493, 'Dragon Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-dragon.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (5, 493, 'Electric Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-electric.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (6, 493, 'Fighting Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-fighting.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (7, 493, 'Fire Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-fire.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (8, 493, 'Flying Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-flying.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (9, 493, 'Ghost Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-ghost.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (10, 493, 'Grass Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-grass.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (11, 493, 'Ground Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-ground.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (12, 493, 'Ice Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-ice.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (13, 493, 'Poison Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-poison.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (14, 493, 'Psychic Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-psychic.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (15, 493, 'Rock Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-rock.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (16, 493, 'Steel Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-steel.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (17, 493, 'Water Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-water.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (18, 493, '??? Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-unknown.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (19, 493, 'Fairy Arceus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/493-fairy.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 585, 'Spring Deerling', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/585-spring.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (2, 585, 'Summer Deerling', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/585-summer.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (3, 585, 'Autumn Deerling', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/585-autumn.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (4, 585, 'Winter Deerling', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/585-winter.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 586, 'Spring Sawsbuck', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/586-spring.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (2, 586, 'Summer Sawsbuck', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/586-summer.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (3, 586, 'Autumn Sawsbuck', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/586-autumn.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (4, 586, 'Winter Sawsbuck', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/586-winter.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 649, 'Douse Genesect', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/649-douse.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (2, 649, 'Shock Genesect', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/649-shock.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (3, 649, 'Burn Genesect', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/649-burn.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (4, 649, 'Chill Genesect', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/649-chill.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 664, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/664-icy-snow.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 665, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/665-icy-snow.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 666, 'Meadow Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-meadow.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (2, 666, 'Icy Snow Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-icy-snow.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (3, 666, 'Polar Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-polar.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (4, 666, 'Tundra Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-tundra.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (5, 666, 'Continental Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-continental.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (6, 666, 'Garden Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-garden.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (7, 666, 'Elegant Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-elegant.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (8, 666, 'Modern Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-modern.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (9, 666, 'Marine Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-marine.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (10, 666, 'Archipelago Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-archipelago.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (11, 666, 'High Plains Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-high-plains.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (12, 666, 'Sandstorm Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-sandstorm.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (13, 666, 'River Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-river.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (14, 666, 'Monsoon Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-monsoon.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (15, 666, 'Savanna Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-savanna.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (16, 666, 'Sun Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-sun.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (17, 666, 'Ocean Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-ocean.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (18, 666, 'Jungle Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-jungle.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (19, 666, 'Fancy Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-fancy.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (20, 666, 'Poké Ball Vivillon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/666-poke-ball.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 669, 'Red Flabébé', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/669-red.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (2, 669, 'Yellow Flabébé', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/669-yellow.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (3, 669, 'Orange Flabébé', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/669-orange.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (4, 669, 'Blue Flabébé', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/669-blue.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (5, 669, 'White Flabébé', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/669-white.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 670, 'Red Floette', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/670-red.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (2, 670, 'Yellow Floette', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/670-yellow.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (3, 670, 'Orange Floette', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/670-orange.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (4, 670, 'Blue Floette', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/670-blue.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (5, 670, 'White Floette', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/670-white.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 671, 'Red Florges', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/671-red.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (2, 671, 'Yellow Florges', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/671-yellow.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (3, 671, 'Orange Florges', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/671-orange.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (4, 671, 'Blue Florges', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/671-blue.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (5, 671, 'White Florges', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/671-white.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 676, 'Natural Furfrou', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/676-natural.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (2, 676, 'Heart Furfrou', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/676-heart.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (3, 676, 'Star Furfrou', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/676-star.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (4, 676, 'Diamond Furfrou', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/676-diamond.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (5, 676, 'Debutante Furfrou', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/676-debutante.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (6, 676, 'Matron Furfrou', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/676-matron.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (7, 676, 'Dandy Furfrou', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/676-dandy.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (8, 676, 'La Reine Furfrou', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/676-la-reine.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (9, 676, 'Kabuki Furfrou', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/676-kabuki.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (10, 676, 'Pharaoh Furfrou', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/676-pharaoh.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 716, 'Active Xerneas', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/716-active.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (2, 716, 'Neutral Xerneas', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/716-neutral.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (1, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-normal.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (2, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-fighting.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (3, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-flying.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (4, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-poison.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (5, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-ground.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (6, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-rock.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (7, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-bug.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (8, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-ghost.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (9, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-steel.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (10, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-fire.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (11, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-water.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (12, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-grass.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (13, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-electric.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (14, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-psychic.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (15, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-ice.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (16, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-dragon.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (17, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-dark.png');
INSERT INTO ALTERNATE_FORM(ALTERNATE_FORM_ID, POKEMON_ID, ALTERNATE_FORM_NAME,
                           ALTERNATE_FORM_IMAGE_URL) VALUE (18, 773, '', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/773-fairy.png');
