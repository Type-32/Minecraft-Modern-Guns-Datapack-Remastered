scoreboard players set .minCount mgdrCrafting 65
scoreboard players set .usedSlots mgdrCrafting 0
scoreboard players set .slot0count mgdrCrafting 65
scoreboard players set .slot1count mgdrCrafting 65
scoreboard players set .slot2count mgdrCrafting 65
scoreboard players set .slot3count mgdrCrafting 65
scoreboard players set .slot4count mgdrCrafting 65
scoreboard players set .slot5count mgdrCrafting 65
scoreboard players set .slot6count mgdrCrafting 65
scoreboard players set .slot7count mgdrCrafting 65
scoreboard players set .slot8count mgdrCrafting 65

execute if data storage mgdr:temp data.Items[{Slot:4b}] store result score .slot4count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:4b}].Count
execute if score .slot4count mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:4b}
execute if score .slot4count mgdrCrafting < .minCount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:4b}
execute if score .slot4count mgdrCrafting < .minCount mgdrCrafting run scoreboard players operation .minCount mgdrCrafting = .slot4count mgdrCrafting
execute if data storage mgdr:temp data.Items[{Slot:1b}] store result score .slot1count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:1b}].Count
execute if score .slot1count mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:1b}
execute if score .slot1count mgdrCrafting < .minCount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:1b}
execute if score .slot1count mgdrCrafting < .minCount mgdrCrafting run scoreboard players operation .minCount mgdrCrafting = .slot1count mgdrCrafting
execute if data storage mgdr:temp data.Items[{Slot:7b}] store result score .slot7count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:7b}].Count
execute if score .slot7count mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:7b}
execute if score .slot7count mgdrCrafting < .minCount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:7b}
execute if score .slot7count mgdrCrafting < .minCount mgdrCrafting run scoreboard players operation .minCount mgdrCrafting = .slot7count mgdrCrafting
execute if data storage mgdr:temp data.Items[{Slot:0b}] store result score .slot0count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:0b}].Count
execute if score .slot0count mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:0b}
execute if score .slot0count mgdrCrafting < .minCount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:0b}
execute if score .slot0count mgdrCrafting < .minCount mgdrCrafting run scoreboard players operation .minCount mgdrCrafting = .slot0count mgdrCrafting
execute if data storage mgdr:temp data.Items[{Slot:2b}] store result score .slot2count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:2b}].Count
execute if score .slot2count mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:2b}
execute if score .slot2count mgdrCrafting < .minCount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:2b}
execute if score .slot2count mgdrCrafting < .minCount mgdrCrafting run scoreboard players operation .minCount mgdrCrafting = .slot2count mgdrCrafting
execute if data storage mgdr:temp data.Items[{Slot:3b}] store result score .slot3count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:3b}].Count
execute if score .slot3count mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:3b}
execute if score .slot3count mgdrCrafting < .minCount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:3b}
execute if score .slot3count mgdrCrafting < .minCount mgdrCrafting run scoreboard players operation .minCount mgdrCrafting = .slot3count mgdrCrafting
execute if data storage mgdr:temp data.Items[{Slot:5b}] store result score .slot5count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:5b}].Count
execute if score .slot5count mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:5b}
execute if score .slot5count mgdrCrafting < .minCount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:5b}
execute if score .slot5count mgdrCrafting < .minCount mgdrCrafting run scoreboard players operation .minCount mgdrCrafting = .slot5count mgdrCrafting
execute if data storage mgdr:temp data.Items[{Slot:6b}] store result score .slot6count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:6b}].Count
execute if score .slot6count mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:6b}
execute if score .slot6count mgdrCrafting < .minCount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:6b}
execute if score .slot6count mgdrCrafting < .minCount mgdrCrafting run scoreboard players operation .minCount mgdrCrafting = .slot6count mgdrCrafting
execute if data storage mgdr:temp data.Items[{Slot:8b}] store result score .slot8count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:8b}].Count
execute if score .slot8count mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:8b}
execute if score .slot8count mgdrCrafting < .minCount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:8b}
execute if score .slot8count mgdrCrafting < .minCount mgdrCrafting run scoreboard players operation .minCount mgdrCrafting = .slot8count mgdrCrafting

execute if score .slot0count mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:0b}].Index byte 1 run scoreboard players get .usedSlots mgdrCrafting
execute if score .slot0count mgdrCrafting matches ..64 run scoreboard players add .usedSlots mgdrCrafting 1
execute if score .slot1count mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:1b}].Index byte 1 run scoreboard players get .usedSlots mgdrCrafting
execute if score .slot1count mgdrCrafting matches ..64 run scoreboard players add .usedSlots mgdrCrafting 1
execute if score .slot2count mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:2b}].Index byte 1 run scoreboard players get .usedSlots mgdrCrafting
execute if score .slot2count mgdrCrafting matches ..64 run scoreboard players add .usedSlots mgdrCrafting 1
execute if score .slot3count mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:3b}].Index byte 1 run scoreboard players get .usedSlots mgdrCrafting
execute if score .slot3count mgdrCrafting matches ..64 run scoreboard players add .usedSlots mgdrCrafting 1
execute if score .slot4count mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:4b}].Index byte 1 run scoreboard players get .usedSlots mgdrCrafting
execute if score .slot4count mgdrCrafting matches ..64 run scoreboard players add .usedSlots mgdrCrafting 1
execute if score .slot5count mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:5b}].Index byte 1 run scoreboard players get .usedSlots mgdrCrafting
execute if score .slot5count mgdrCrafting matches ..64 run scoreboard players add .usedSlots mgdrCrafting 1
execute if score .slot6count mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:6b}].Index byte 1 run scoreboard players get .usedSlots mgdrCrafting
execute if score .slot6count mgdrCrafting matches ..64 run scoreboard players add .usedSlots mgdrCrafting 1
execute if score .slot7count mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:7b}].Index byte 1 run scoreboard players get .usedSlots mgdrCrafting
execute if score .slot7count mgdrCrafting matches ..64 run scoreboard players add .usedSlots mgdrCrafting 1
execute if score .slot8count mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:8b}].Index byte 1 run scoreboard players get .usedSlots mgdrCrafting
execute if score .slot8count mgdrCrafting matches ..64 run scoreboard players add .usedSlots mgdrCrafting 1