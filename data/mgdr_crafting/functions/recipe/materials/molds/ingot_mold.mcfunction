# Checking for recipe structure
#    0  |  1  |  2
#    -------------
#    3  |  4  |  5
#    -------------
#    6  |  7  |  8

scoreboard players set .succeedIndicator mgdrCrafting 1

execute if score .succeedIndicator mgdrCrafting matches 1 unless data storage mgdr:temp data.Items[{Slot:0b,Count:1b,id:"minecraft:iron_ingot"}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 1 unless data storage mgdr:temp data.Items[{Slot:1b,Count:1b,id:"minecraft:iron_ingot"}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 1 unless data storage mgdr:temp data.Items[{Slot:2b,Count:1b,id:"minecraft:iron_ingot"}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 1 unless data storage mgdr:temp data.Items[{Slot:3b,Count:1b,tag:{Tags:["iron_plate"]}}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 1 unless data storage mgdr:temp data.Items[{Slot:4b,Count:1b,tag:{Tags:["iron_plate"]}}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 1 unless data storage mgdr:temp data.Items[{Slot:5b,Count:1b,tag:{Tags:["iron_plate"]}}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 1 unless data storage mgdr:temp data.Items[{Slot:6b,Count:1b,id:"minecraft:iron_ingot"}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 1 unless data storage mgdr:temp data.Items[{Slot:7b,Count:1b,id:"minecraft:iron_ingot"}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 1 unless data storage mgdr:temp data.Items[{Slot:8b,Count:1b,id:"minecraft:iron_ingot"}] run scoreboard players set .succeedIndicator mgdrCrafting 0

#If Structure Found
execute if score .succeedIndicator mgdrCrafting matches 1 run function mgdr_crafting:recipe/compute/multi_plate_result
execute if score .succeedIndicator mgdrCrafting matches 1 run function mgdr_crafting:action/molds/ingot_mold
