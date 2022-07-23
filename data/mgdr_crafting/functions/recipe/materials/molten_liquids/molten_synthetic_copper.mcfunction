# Checking for recipe structure
#    0  |  1  |  2
#    -------------
#    3  |  4  |  5
#    -------------
#    6  |  7  |  8

scoreboard players set .succeedIndicator mgdrCrafting 3

execute if score .succeedIndicator mgdrCrafting matches 3 unless data storage mgdr:temp data.Items[{id:"minecraft:raw_copper"}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 3 unless data storage mgdr:temp data.Items[{id:"minecraft:raw_gold"}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 3 unless data storage mgdr:temp data.Items[{id:"minecraft:prismarine_shard"}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 3 unless data storage mgdr:temp data.Items[{id:"minecraft:prismarine_crystals"}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 3 unless data storage mgdr:temp data.Items[{id:"minecraft:bucket"}] run scoreboard players set .succeedIndicator mgdrCrafting 0

#If Structure Found
execute if score .succeedIndicator mgdrCrafting matches 3 run function mgdr_crafting:recipe/compute/bucket_holder_result
execute if score .succeedIndicator mgdrCrafting matches 3 run function mgdr_crafting:action/molten_liquids/molten_synthetic_copper
