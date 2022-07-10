#Grenade 1
#Flashbang 2
#Landmine 3
#Combat Master Vest 4
execute if score @s chooseEquipment1 matches 5.. run tellraw @s ["",{"text": "Equipment ","color": "red"},{"text": "#","color": "gold"},{"color": "gold","score":{"name": "@s","objective": "chooseEquipment1"}},{"text": " Does Not Exist! You can choose another equipment using ","color": "red"},{"text": "/trigger chooseEquipment1 set ","color": "gold"},{"text": "<Equipment Number>","color": "green"}]
tellraw @s[scores={chooseEquipment1=1}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "Grenade ","color": "green"},{"text": "as your first equipment.","color": "yellow"}]
tellraw @s[scores={chooseEquipment1=2}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "Flashbang ","color": "green"},{"text": "as your first equipment.","color": "yellow"}]
tellraw @s[scores={chooseEquipment1=3}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "Landmine ","color": "green"},{"text": "as your first equipment.","color": "yellow"}]
tellraw @s[scores={chooseEquipment1=4}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "Combat Master Vest ","color": "green"},{"text": "as your first equipment.","color": "yellow"}]

scoreboard players operation @s equipmentChoice1 = @s chooseEquipment1
scoreboard players set @s chooseEquipment1 0
