#Grenade 1
#Flashbang 2
#Landmine 3
#Combat Master Vest 4
execute if score @s chooseEquipment2 matches 5.. run tellraw @s ["",{"translate": "mgdr_arcade.message.loadout.equipment_text","color": "red"},{"text": "#","color": "gold"},{"color": "gold","score":{"name": "@s","objective": "chooseEquipment2"}},{"translate": "mgdr_arcade.message.loadout.equipment_doesnt_exist","color": "red"},{"text": "/trigger chooseEquipment2 set ","color": "gold"},{"translate": "mgdr_arcade.message.loadout.equipment_number","color": "green"}]
tellraw @s[scores={chooseEquipment2=1}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "Grenade ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_equipment","color": "yellow"}]
tellraw @s[scores={chooseEquipment2=2}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "Flashbang ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_equipment","color": "yellow"}]
tellraw @s[scores={chooseEquipment2=3}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "Landmine ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_equipment","color": "yellow"}]
tellraw @s[scores={chooseEquipment2=4}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "Combat Master Vest ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_equipment","color": "yellow"}]

playsound minecraft:ui.button.click player @s ~ ~ ~ 10000000 2
scoreboard players operation @s equipmentChoice2 = @s chooseEquipment2
scoreboard players set @s chooseEquipment2 0
