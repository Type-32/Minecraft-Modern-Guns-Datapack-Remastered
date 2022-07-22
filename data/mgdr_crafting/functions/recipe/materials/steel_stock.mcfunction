# Checking for recipe structure
#    0  |  1  |  2
#    -------------
#    3  |  4  |  5
#    -------------
#    6  |  7  |  8

execute if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,tag:{Tags:["iron_pole"]}},{Count:1b,Slot:1b,tag:{Tags:["iron_plate"]}},{Count:1b,Slot:2b,id:"minecraft:iron_ingot"},{Count:1b,Slot:4b,tag:{Tags:["iron_plate"]}},{Count:1b,Slot:5b,id:"minecraft:iron_ingot"},{Count:1b,Slot:8b,id:"minecraft:iron_ingot"}]} run function mgdr_crafting:action/steel_stock
