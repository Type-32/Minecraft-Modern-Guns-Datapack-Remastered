execute if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,tag:{Tags:["steel_barrel"]}},{Count:1b,Slot:2b,tag:{Tags:["steel_uppercover"]}},{Count:1b,Slot:4b,tag:{Tags:["steel_hull"]}},{Count:1b,Slot:7b,tag:{Tags:["steel_grip"]}},{Count:1b,Slot:8b,tag:{Tags:["steel_stock"]}}]} run tag @s add cbr27
execute if entity @s[tag=cbr27] run function mgdr_crafting:action/cbr27
