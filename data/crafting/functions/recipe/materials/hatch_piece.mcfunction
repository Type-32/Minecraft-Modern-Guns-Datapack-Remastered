# Checking for recipe structure
#    0  |  1  |  2
#    -------------
#    3  |  4  |  5
#    -------------
#    6  |  7  |  8

execute as @e[tag=workbench] at @s if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,tag:{Tags:["copper_plate"]}},{Count:1b,Slot:1b,tag:{Tags:["copper_plate"]}},{Count:1b,Slot:2b,tag:{Tags:["iron_pole"]}},{Count:1b,Slot:3b,tag:{Tags:["iron_plate"]}},{Count:1b,Slot:4b,tag:{Tags:["iron_plate"]}},{Count:1b,Slot:5b,tag:{Tags:["iron_pole"]}},{Count:1b,Slot:8b,tag:{Tags:["iron_pole"]}}]} run tag @s add hatch_piece
execute as @e[tag=workbench,tag=hatch_piece] at @s run function crafting:action/hatch_piece
