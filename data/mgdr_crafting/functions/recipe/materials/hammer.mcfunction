# Checking for recipe structure
#    0  |  1  |  2
#    -------------
#    3  |  4  |  5
#    -------------
#    6  |  7  |  8

scoreboard players set .succeedIndicator mgdrCrafting 1

execute if score .succeedIndicator mgdrCrafting matches 1 unless data storage mgdr:temp data.Items[{Slot:0b,id:"minecraft:iron_ingot",Count:1b}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 1 unless data storage mgdr:temp data.Items[{Slot:1b,id:"minecraft:iron_block",Count:1b}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 1 unless data storage mgdr:temp data.Items[{Slot:2b,id:"minecraft:iron_ingot",Count:1b}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 1 unless data storage mgdr:temp data.Items[{Slot:4b,id:"minecraft:stick",Count:1b}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 1 unless data storage mgdr:temp data.Items[{Slot:7b,id:"minecraft:stick",Count:1b}] run scoreboard players set .succeedIndicator mgdrCrafting 0

#If Structure Found
#execute if score .succeedIndicator mgdrCrafting matches 1 run function mgdr_crafting:recipe/compute/multi_plate_result
execute if score .succeedIndicator mgdrCrafting matches 1 run function mgdr_crafting:action/hammer
