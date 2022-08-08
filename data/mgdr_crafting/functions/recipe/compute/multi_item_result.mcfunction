scoreboard players set .outputMultiplier mgdrCrafting 1
scoreboard players set .leastNumberCount mgdrCrafting 1000000

scoreboard players operation .slot0count.temp mgdrCrafting = .slot0count mgdrCrafting
scoreboard players operation .slot1count.temp mgdrCrafting = .slot1count mgdrCrafting
scoreboard players operation .slot2count.temp mgdrCrafting = .slot2count mgdrCrafting
scoreboard players operation .slot3count.temp mgdrCrafting = .slot3count mgdrCrafting
scoreboard players operation .slot4count.temp mgdrCrafting = .slot4count mgdrCrafting
scoreboard players operation .slot5count.temp mgdrCrafting = .slot5count mgdrCrafting
scoreboard players operation .slot6count.temp mgdrCrafting = .slot6count mgdrCrafting
scoreboard players operation .slot7count.temp mgdrCrafting = .slot7count mgdrCrafting
scoreboard players operation .slot8count.temp mgdrCrafting = .slot8count mgdrCrafting

execute if score .leastNumberCount mgdrCrafting > .slot0count.temp mgdrCrafting if score .slot0count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot0count.temp mgdrCrafting
execute if score .leastNumberCount mgdrCrafting > .slot1count.temp mgdrCrafting if score .slot1count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot1count.temp mgdrCrafting
execute if score .leastNumberCount mgdrCrafting > .slot2count.temp mgdrCrafting if score .slot2count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot2count.temp mgdrCrafting
execute if score .leastNumberCount mgdrCrafting > .slot3count.temp mgdrCrafting if score .slot3count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot3count.temp mgdrCrafting
execute if score .leastNumberCount mgdrCrafting > .slot4count.temp mgdrCrafting if score .slot4count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot4count.temp mgdrCrafting
execute if score .leastNumberCount mgdrCrafting > .slot5count.temp mgdrCrafting if score .slot5count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot5count.temp mgdrCrafting
execute if score .leastNumberCount mgdrCrafting > .slot6count.temp mgdrCrafting if score .slot6count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot6count.temp mgdrCrafting
execute if score .leastNumberCount mgdrCrafting > .slot7count.temp mgdrCrafting if score .slot7count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot7count.temp mgdrCrafting
execute if score .leastNumberCount mgdrCrafting > .slot8count.temp mgdrCrafting if score .slot8count.temp mgdrCrafting matches 1.. run scoreboard players operation .leastNumberCount mgdrCrafting = .slot8count.temp mgdrCrafting

scoreboard players operation .slot0count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting
scoreboard players operation .slot1count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting
scoreboard players operation .slot2count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting
scoreboard players operation .slot3count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting
scoreboard players operation .slot4count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting
scoreboard players operation .slot5count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting
scoreboard players operation .slot6count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting
scoreboard players operation .slot7count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting
scoreboard players operation .slot8count.temp mgdrCrafting -= .leastNumberCount mgdrCrafting

data modify storage mgdr:temp outputItems set from storage mgdr:temp data.Items
execute if score .slot0count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:0b}].Count byte 1 run scoreboard players get .slot0count.temp mgdrCrafting
execute if score .slot1count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:1b}].Count byte 1 run scoreboard players get .slot1count.temp mgdrCrafting
execute if score .slot2count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:2b}].Count byte 1 run scoreboard players get .slot2count.temp mgdrCrafting
execute if score .slot3count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:3b}].Count byte 1 run scoreboard players get .slot3count.temp mgdrCrafting
execute if score .slot4count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:4b}].Count byte 1 run scoreboard players get .slot4count.temp mgdrCrafting
execute if score .slot5count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:5b}].Count byte 1 run scoreboard players get .slot5count.temp mgdrCrafting
execute if score .slot6count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:6b}].Count byte 1 run scoreboard players get .slot6count.temp mgdrCrafting
execute if score .slot7count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:7b}].Count byte 1 run scoreboard players get .slot7count.temp mgdrCrafting
execute if score .slot8count.temp mgdrCrafting matches 0.. store result storage mgdr:temp outputItems[{Slot:8b}].Count byte 1 run scoreboard players get .slot8count.temp mgdrCrafting

execute if score .leastNumberCount mgdrCrafting matches 1000000 run scoreboard players set .leastNumberCount mgdrCrafting 0
scoreboard players operation .outputMultiplier mgdrCrafting = .leastNumberCount mgdrCrafting