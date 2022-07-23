# Checking for recipe structure
#    0  |  1  |  2
#    -------------
#    3  |  4  |  5
#    -------------
#    6  |  7  |  8

scoreboard players set .succeedIndicator mgdrCrafting 4

execute if score .succeedIndicator mgdrCrafting matches 4 unless data storage mgdr:temp data.Items[{tag:{Tags:["molten_synthetic_copper"]}}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 4 unless data storage mgdr:temp data.Items[{tag:{Tags:["ingot_mold"]}}] run scoreboard players set .succeedIndicator mgdrCrafting 0

#If Structure Found
execute if score .succeedIndicator mgdrCrafting matches 4 run function mgdr_crafting:recipe/compute/molding_result
execute if score .succeedIndicator mgdrCrafting matches 4 run function mgdr_crafting:action/molding/synthetic_copper_ingot
