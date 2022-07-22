# Checking for recipe structure
#    0  |  1  |  2
#    -------------
#    3  |  4  |  5
#    -------------
#    6  |  7  |  8

execute if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:1b,id:"minecraft:string"},{Count:1b,Slot:3b,id:"minecraft:string"},{Count:1b,Slot:4b,id:"minecraft:white_stained_glass_pane"},{Count:1b,Slot:5b,id:"minecraft:string"},{Count:1b,Slot:7b,id:"minecraft:string"}]} run function mgdr_crafting:action/optic_fiber_lens
