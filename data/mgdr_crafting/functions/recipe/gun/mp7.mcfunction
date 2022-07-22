execute if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,tag:{Tags:["steel_barrel"]}},{Count:1b,Slot:2b,tag:{Tags:["steel_uppercover"]}},{Count:1b,Slot:4b,tag:{Tags:["steel_hull"]}},{Count:1b,Slot:7b,tag:{Tags:["steel_grip"]}},{Count:1b,Slot:8b,tag:{Tags:["steel_stock"]}}]} run tag @s add mp7
execute if entity @s[tag=mp7] run schedule function mgdr_crafting:action/mp7 3s
execute if entity @s[tag=!mp7] run schedule clear mgdr_crafting:action/mp7
