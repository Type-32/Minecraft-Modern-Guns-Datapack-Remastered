scoreboard players set mincount mgdrCrafting 65
scoreboard players set slots mgdrCrafting 0
scoreboard players set s0c mgdrCrafting 65
scoreboard players set s1c mgdrCrafting 65
scoreboard players set s2c mgdrCrafting 65
scoreboard players set s3c mgdrCrafting 65
scoreboard players set s4c mgdrCrafting 65
scoreboard players set s5c mgdrCrafting 65
scoreboard players set s6c mgdrCrafting 65
scoreboard players set s7c mgdrCrafting 65
scoreboard players set s8c mgdrCrafting 65

execute if data storage mgdr:temp data.Items[{Slot:4b}] store result score s4c mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:4b}].Count
execute if score s4c mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:4b}
execute if score s4c mgdrCrafting < mincount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:4b}
execute if score s4c mgdrCrafting < mincount mgdrCrafting run scoreboard players operation mincount mgdrCrafting = s4c mgdrCrafting
execute if data storage mgdr:temp data.Items[{Slot:1b}] store result score s1c mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:1b}].Count
execute if score s1c mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:1b}
execute if score s1c mgdrCrafting < mincount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:1b}
execute if score s1c mgdrCrafting < mincount mgdrCrafting run scoreboard players operation mincount mgdrCrafting = s1c mgdrCrafting
execute if data storage mgdr:temp data.Items[{Slot:7b}] store result score s7c mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:7b}].Count
execute if score s7c mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:7b}
execute if score s7c mgdrCrafting < mincount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:7b}
execute if score s7c mgdrCrafting < mincount mgdrCrafting run scoreboard players operation mincount mgdrCrafting = s7c mgdrCrafting
execute if data storage mgdr:temp data.Items[{Slot:0b}] store result score s0c mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:0b}].Count
execute if score s0c mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:0b}
execute if score s0c mgdrCrafting < mincount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:0b}
execute if score s0c mgdrCrafting < mincount mgdrCrafting run scoreboard players operation mincount mgdrCrafting = s0c mgdrCrafting
execute if data storage mgdr:temp data.Items[{Slot:2b}] store result score s2c mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:2b}].Count
execute if score s2c mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:2b}
execute if score s2c mgdrCrafting < mincount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:2b}
execute if score s2c mgdrCrafting < mincount mgdrCrafting run scoreboard players operation mincount mgdrCrafting = s2c mgdrCrafting
execute if data storage mgdr:temp data.Items[{Slot:3b}] store result score s3c mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:3b}].Count
execute if score s3c mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:3b}
execute if score s3c mgdrCrafting < mincount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:3b}
execute if score s3c mgdrCrafting < mincount mgdrCrafting run scoreboard players operation mincount mgdrCrafting = s3c mgdrCrafting
execute if data storage mgdr:temp data.Items[{Slot:5b}] store result score s5c mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:5b}].Count
execute if score s5c mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:5b}
execute if score s5c mgdrCrafting < mincount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:5b}
execute if score s5c mgdrCrafting < mincount mgdrCrafting run scoreboard players operation mincount mgdrCrafting = s5c mgdrCrafting
execute if data storage mgdr:temp data.Items[{Slot:6b}] store result score s6c mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:6b}].Count
execute if score s6c mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:6b}
execute if score s6c mgdrCrafting < mincount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:6b}
execute if score s6c mgdrCrafting < mincount mgdrCrafting run scoreboard players operation mincount mgdrCrafting = s6c mgdrCrafting
execute if data storage mgdr:temp data.Items[{Slot:8b}] store result score s8c mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:8b}].Count
execute if score s8c mgdrCrafting matches 65 unless data storage mgdr:temp data.EmptySlot run data modify storage mgdr:temp data.EmptySlot set value {Slot:8b}
execute if score s8c mgdrCrafting < mincount mgdrCrafting run data modify storage mgdr:temp data.MinSlot set value {Slot:8b}
execute if score s8c mgdrCrafting < mincount mgdrCrafting run scoreboard players operation mincount mgdrCrafting = s8c mgdrCrafting

execute if score s0c mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:0b}].Index byte 1 run scoreboard players get slots mgdrCrafting
execute if score s0c mgdrCrafting matches ..64 run scoreboard players add slots mgdrCrafting 1
execute if score s1c mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:1b}].Index byte 1 run scoreboard players get slots mgdrCrafting
execute if score s1c mgdrCrafting matches ..64 run scoreboard players add slots mgdrCrafting 1
execute if score s2c mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:2b}].Index byte 1 run scoreboard players get slots mgdrCrafting
execute if score s2c mgdrCrafting matches ..64 run scoreboard players add slots mgdrCrafting 1
execute if score s3c mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:3b}].Index byte 1 run scoreboard players get slots mgdrCrafting
execute if score s3c mgdrCrafting matches ..64 run scoreboard players add slots mgdrCrafting 1
execute if score s4c mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:4b}].Index byte 1 run scoreboard players get slots mgdrCrafting
execute if score s4c mgdrCrafting matches ..64 run scoreboard players add slots mgdrCrafting 1
execute if score s5c mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:5b}].Index byte 1 run scoreboard players get slots mgdrCrafting
execute if score s5c mgdrCrafting matches ..64 run scoreboard players add slots mgdrCrafting 1
execute if score s6c mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:6b}].Index byte 1 run scoreboard players get slots mgdrCrafting
execute if score s6c mgdrCrafting matches ..64 run scoreboard players add slots mgdrCrafting 1
execute if score s7c mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:7b}].Index byte 1 run scoreboard players get slots mgdrCrafting
execute if score s7c mgdrCrafting matches ..64 run scoreboard players add slots mgdrCrafting 1
execute if score s8c mgdrCrafting matches ..64 store result storage mgdr:temp data.Items[{Slot:8b}].Index byte 1 run scoreboard players get slots mgdrCrafting
execute if score s8c mgdrCrafting matches ..64 run scoreboard players add slots mgdrCrafting 1