# Checking for recipe structure
#    0  |  1  |  2
#    -------------
#    3  |  4  |  5
#    -------------
#    6  |  7  |  8

execute if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:iron_ingot"},{Count:1b,Slot:1b,id:"minecraft:iron_ingot"},{Count:1b,Slot:2b,tag:{Tags:["stock_connector"]}},{Count:1b,Slot:3b,tag:{Tags:["iron_plate"]}},{Count:1b,Slot:4b,tag:{Tags:["hatch_piece"]}},{Count:1b,Slot:5b,id:"minecraft:iron_ingot"},{Count:1b,Slot:6b,tag:{Tags:["iron_plate"]}},{Count:1b,Slot:7b,tag:{Tags:["iron_plate"]}}]} run function mgdr_crafting:action/steel_hull
