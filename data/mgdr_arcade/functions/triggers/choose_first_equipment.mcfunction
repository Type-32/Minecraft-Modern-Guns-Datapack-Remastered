#Grenade 1
#Flashbang 2
#Landmine 3
#Combat Master Vest 4
execute if score @s chooseEquipment1 matches 6.. run tellraw @s ["",{"translate": "mgdr_arcade.message.loadout.equipment_text","color": "red"},{"text": "#","color": "gold"},{"color": "gold","score":{"name": "@s","objective": "chooseEquipment1"}},{"translate": "mgdr_arcade.message.loadout.equipment_doesnt_exist","color": "red"},{"text": "/trigger chooseEquipment1 set ","color": "gold"},{"translate": "mgdr_arcade.message.loadout.equipment_number","color": "green"}]
tellraw @s[scores={chooseEquipment1=1}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "mgdr_arcade.message.loadout.grenade","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_equipment","color": "yellow"}]
tellraw @s[scores={chooseEquipment1=2}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "mgdr_arcade.message.loadout.flashbang","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_equipment","color": "yellow"}]
tellraw @s[scores={chooseEquipment1=3}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "mgdr_arcade.message.loadout.landmine","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_equipment","color": "yellow"}]
tellraw @s[scores={chooseEquipment1=4}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "mgdr_arcade.message.loadout.combat_master_vest","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_equipment","color": "yellow"}]
tellraw @s[scores={chooseEquipment1=5}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "mgdr_arcade.message.loadout.stim_shot","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_equipment","color": "yellow"}]

playsound minecraft:ui.button.click player @s ~ ~ ~ 10000000 2
scoreboard players operation @s equipmentChoice1 = @s chooseEquipment1
scoreboard players set @s chooseEquipment1 0
