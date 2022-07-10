#Grenade 1
#Flashbang 2
#Landmine 3
#Combat Master Vest 4
execute if score @s chooseEquipment2 matches 5.. run tellraw @s ["",{"text": "Equipment ","color": "red"},{"text": "#","color": "gold"},{"color": "gold","score":{"name": "@s","objective": "chooseEquipment2"}},{"text": " Does Not Exist! You can choose another equipment using ","color": "red"},{"text": "/trigger chooseEquipment2 set ","color": "gold"},{"text": "<Equipment Number>","color": "green"}]
tellraw @s[scores={chooseEquipment2=1}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "Grenade ","color": "green"},{"text": "as your second equipment.","color": "yellow"}]
tellraw @s[scores={chooseEquipment2=2}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "Flashbang ","color": "green"},{"text": "as your second equipment.","color": "yellow"}]
tellraw @s[scores={chooseEquipment2=3}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "Landmine ","color": "green"},{"text": "as your second equipment.","color": "yellow"}]
tellraw @s[scores={chooseEquipment2=4}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "Combat Master Vest ","color": "green"},{"text": "as your second equipment.","color": "yellow"}]

scoreboard players operation @s equipmentChoice2 = @s chooseEquipment2
scoreboard players set @s chooseEquipment2 0
