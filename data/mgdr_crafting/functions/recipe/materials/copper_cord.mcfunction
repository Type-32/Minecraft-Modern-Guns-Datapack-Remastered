# Checking for recipe structure
#    0  |  1  |  2
#    -------------
#    3  |  4  |  5
#    -------------
#    6  |  7  |  8

execute if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{}},{Slot:2b,tag:{}},{Slot:3b,tag:{}},{Slot:5b,tag:{}},{Slot:6b,tag:{}},{Slot:8b,tag:{}},{Slot:9b,tag:{}}]} if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:1b,tag:{Tags:["copper_plate"]}},{Count:1b,Slot:4b,tag:{Tags:["copper_plate"]}},{Count:1b,Slot:7b,tag:{Tags:["copper_plate"]}}]} run function mgdr_crafting:action/copper_cord
