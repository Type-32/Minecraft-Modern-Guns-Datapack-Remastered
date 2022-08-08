##Initialization
scoreboard players set .outputMultiplier mgdrCrafting 1
scoreboard players set .1 mgdrCrafting 1
scoreboard players set .leastNumberCount mgdrCrafting 1
#scoreboard players set .availableMoldedIngotSlot mgdrCrafting 0
#scoreboard players set .availableMoldSlot mgdrCrafting 0

##Getting the Molded Ingot Slot that is in the Workbench
##Getting the Mold Slot that is in the Workbench
execute store result score .availableMoldedIngotSlot mgdrCrafting run data get storage mgdr:temp data.Items[{tag:{Tags:["molded_ingot"]}}].Slot
execute store result score .availableMoldSlot mgdrCrafting run data get storage mgdr:temp data.Items[{tag:{Tags:["mold"]}}].Slot
execute store result score .targetMoltenLiquidSlot mgdrCrafting run data get storage mgdr:temp data.Items[{tag:{Tags:["molten_bucket"]}}].Slot

scoreboard players operation .slot0count.temp mgdrCrafting = .slot0count mgdrCrafting
scoreboard players operation .slot1count.temp mgdrCrafting = .slot1count mgdrCrafting
scoreboard players operation .slot2count.temp mgdrCrafting = .slot2count mgdrCrafting
scoreboard players operation .slot3count.temp mgdrCrafting = .slot3count mgdrCrafting
scoreboard players operation .slot4count.temp mgdrCrafting = .slot4count mgdrCrafting
scoreboard players operation .slot5count.temp mgdrCrafting = .slot5count mgdrCrafting
scoreboard players operation .slot6count.temp mgdrCrafting = .slot6count mgdrCrafting
scoreboard players operation .slot7count.temp mgdrCrafting = .slot7count mgdrCrafting
scoreboard players operation .slot8count.temp mgdrCrafting = .slot8count mgdrCrafting

##I Don't think this part is actually needed since this part finds for the least {Count} Number in the grid but only one(as the least number '1') is allowed to convert to an ingot each time so the least {Count} Number would always be equal to 1
#execute unless score .availableMoldedIngotSlot mgdrCrafting matches 0 unless score .availableMoldSlot mgdrCrafting matches 0 if score .leastNumberCount mgdrCrafting >= .slot0count.temp mgdrCrafting if score .slot0count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot0count.temp mgdrCrafting
#execute unless score .availableMoldedIngotSlot mgdrCrafting matches 1 unless score .availableMoldSlot mgdrCrafting matches 1 if score .leastNumberCount mgdrCrafting >= .slot1count.temp mgdrCrafting if score .slot1count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot1count.temp mgdrCrafting
#execute unless score .availableMoldedIngotSlot mgdrCrafting matches 2 unless score .availableMoldSlot mgdrCrafting matches 2 if score .leastNumberCount mgdrCrafting >= .slot2count.temp mgdrCrafting if score .slot2count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot2count.temp mgdrCrafting
#execute unless score .availableMoldedIngotSlot mgdrCrafting matches 3 unless score .availableMoldSlot mgdrCrafting matches 3 if score .leastNumberCount mgdrCrafting >= .slot3count.temp mgdrCrafting if score .slot3count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot3count.temp mgdrCrafting
#execute unless score .availableMoldedIngotSlot mgdrCrafting matches 4 unless score .availableMoldSlot mgdrCrafting matches 4 if score .leastNumberCount mgdrCrafting >= .slot4count.temp mgdrCrafting if score .slot4count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot4count.temp mgdrCrafting
#execute unless score .availableMoldedIngotSlot mgdrCrafting matches 5 unless score .availableMoldSlot mgdrCrafting matches 5 if score .leastNumberCount mgdrCrafting >= .slot5count.temp mgdrCrafting if score .slot5count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot5count.temp mgdrCrafting
#execute unless score .availableMoldedIngotSlot mgdrCrafting matches 6 unless score .availableMoldSlot mgdrCrafting matches 6 if score .leastNumberCount mgdrCrafting >= .slot6count.temp mgdrCrafting if score .slot6count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot6count.temp mgdrCrafting
#execute unless score .availableMoldedIngotSlot mgdrCrafting matches 7 unless score .availableMoldSlot mgdrCrafting matches 7 if score .leastNumberCount mgdrCrafting >= .slot7count.temp mgdrCrafting if score .slot7count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot7count.temp mgdrCrafting
#execute unless score .availableMoldedIngotSlot mgdrCrafting matches 8 unless score .availableMoldSlot mgdrCrafting matches 8 if score .leastNumberCount mgdrCrafting >= .slot8count.temp mgdrCrafting if score .slot8count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot8count.temp mgdrCrafting

## Decreasing every slot {Count} item number by one
scoreboard players operation .slot0count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting
scoreboard players operation .slot1count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting
scoreboard players operation .slot2count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting
scoreboard players operation .slot3count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting
scoreboard players operation .slot4count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting
scoreboard players operation .slot5count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting
scoreboard players operation .slot6count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting
scoreboard players operation .slot7count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting
scoreboard players operation .slot8count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting

##Preventing Mold and Molded Ingot From Getting Decreased in Count and Applying Decreased {Count} Numbers to Molten Bucket Slot
data modify storage mgdr:temp outputItems set from storage mgdr:temp data.Items
execute unless score .availableMoldedIngotSlot mgdrCrafting matches 0 unless score .availableMoldSlot mgdrCrafting matches 0 if score .targetMoltenLiquidSlot mgdrCrafting matches 0 if score .slot0count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:0b}].Count int 1 run scoreboard players get .slot0count.temp mgdrCrafting
execute unless score .availableMoldedIngotSlot mgdrCrafting matches 1 unless score .availableMoldSlot mgdrCrafting matches 1 if score .targetMoltenLiquidSlot mgdrCrafting matches 1 if score .slot1count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:1b}].Count int 1 run scoreboard players get .slot1count.temp mgdrCrafting
execute unless score .availableMoldedIngotSlot mgdrCrafting matches 2 unless score .availableMoldSlot mgdrCrafting matches 2 if score .targetMoltenLiquidSlot mgdrCrafting matches 2 if score .slot2count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:2b}].Count int 1 run scoreboard players get .slot2count.temp mgdrCrafting
execute unless score .availableMoldedIngotSlot mgdrCrafting matches 3 unless score .availableMoldSlot mgdrCrafting matches 3 if score .targetMoltenLiquidSlot mgdrCrafting matches 3 if score .slot3count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:3b}].Count int 1 run scoreboard players get .slot3count.temp mgdrCrafting
execute unless score .availableMoldedIngotSlot mgdrCrafting matches 4 unless score .availableMoldSlot mgdrCrafting matches 4 if score .targetMoltenLiquidSlot mgdrCrafting matches 4 if score .slot4count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:4b}].Count int 1 run scoreboard players get .slot4count.temp mgdrCrafting
execute unless score .availableMoldedIngotSlot mgdrCrafting matches 5 unless score .availableMoldSlot mgdrCrafting matches 5 if score .targetMoltenLiquidSlot mgdrCrafting matches 5 if score .slot5count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:5b}].Count int 1 run scoreboard players get .slot5count.temp mgdrCrafting
execute unless score .availableMoldedIngotSlot mgdrCrafting matches 6 unless score .availableMoldSlot mgdrCrafting matches 6 if score .targetMoltenLiquidSlot mgdrCrafting matches 6 if score .slot6count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:6b}].Count int 1 run scoreboard players get .slot6count.temp mgdrCrafting
execute unless score .availableMoldedIngotSlot mgdrCrafting matches 7 unless score .availableMoldSlot mgdrCrafting matches 7 if score .targetMoltenLiquidSlot mgdrCrafting matches 7 if score .slot7count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:7b}].Count int 1 run scoreboard players get .slot7count.temp mgdrCrafting
execute unless score .availableMoldedIngotSlot mgdrCrafting matches 8 unless score .availableMoldSlot mgdrCrafting matches 8 if score .targetMoltenLiquidSlot mgdrCrafting matches 8 if score .slot8count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:8b}].Count int 1 run scoreboard players get .slot8count.temp mgdrCrafting

##
#execute if score .leastNumberCount mgdrCrafting matches 1000000 run scoreboard players set .leastNumberCount mgdrCrafting 0
#execute if score .leastNumberCount mgdrCrafting matches 1.. run scoreboard players remove .leastNumberCount mgdrCrafting 1
scoreboard players operation .outputMultiplier mgdrCrafting = .leastNumberCount mgdrCrafting
