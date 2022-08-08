# Checking for recipe structure
#    0  |  1  |  2
#    -------------
#    3  |  4  |  5
#    -------------
#    6  |  7  |  8

scoreboard players set .succeedIndicator mgdrCrafting 5
scoreboard players set .checkInGridMoltenBuckets mgdrCrafting 0
execute store result score .checkInGridMoltenBuckets mgdrCrafting if data storage mgdr:temp data.Items[{tag:{Tags:["molded_ingot"]}}]

execute if score .succeedIndicator mgdrCrafting matches 5 unless data storage mgdr:temp data.Items[{tag:{Tags:["synthetic_iron_ingot"]}}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 5 unless data storage mgdr:temp data.Items[{tag:{Tags:["hammer"]}}] run scoreboard players set .succeedIndicator mgdrCrafting 0
execute if score .succeedIndicator mgdrCrafting matches 5 unless score .checkInGridMoltenBuckets mgdrCrafting matches 0..1 run scoreboard players set .succeedIndicator mgdrCrafting 0

#If Structure Found
execute if score .succeedIndicator mgdrCrafting matches 5 run function mgdr_crafting:recipe/compute/hammering_result
execute if score .succeedIndicator mgdrCrafting matches 5 run function mgdr_crafting:action/synthetic_iron_plate
