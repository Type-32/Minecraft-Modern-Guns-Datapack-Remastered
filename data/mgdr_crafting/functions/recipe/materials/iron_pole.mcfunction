# Checking for recipe structure
#    0  |  1  |  2
#    -------------
#    3  |  4  |  5
#    -------------
#    6  |  7  |  8

execute as @e[tag=workbench] at @s if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:1b,tag:{Tags:["iron_plate"]}},{Count:1b,Slot:4b,tag:{Tags:["iron_plate"]}},{Count:1b,Slot:7b,tag:{Tags:["iron_plate"]}}]} run tag @s add iron_pole
execute as @e[tag=workbench,tag=iron_pole] at @s run function mgdr_crafting:action/iron_pole