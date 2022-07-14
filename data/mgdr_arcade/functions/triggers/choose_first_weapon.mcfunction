#CBR27 1
#CBR27A1 2
#AK40 3
#ASVAL 4
#AUGPara 5
#CBT97 6
#Grau556 7
#SIG716 8
#CZ117 9
#MP7 10
#MP5 12
#Vec9 12
#M14 13
#CBS5 14
#M17 15
#M1911 16
#Combat Master Knife 17
execute if score @s chooseWeapon1 matches 17.. run tellraw @s ["",{"translate": "mgdr_arcade.message.loadout.weapon_text","color": "red"},{"text": "#","color": "gold"},{"color": "gold","score":{"name": "@s","objective": "chooseWeapon1"}},{"translate": "mgdr_arcade.message.loadout.weapon_doesnt_exist","color": "red"},{"text": "/trigger chooseWeapon1 set ","color": "gold"},{"translate": "mgdr_arcade.message.loadout.weapon_number","color": "green"}]
tellraw @s[scores={chooseWeapon1=1}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "CBR-27 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=2}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "CBR-27-A1 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=3}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "AK-40 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=4}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "AS-VAL ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=5}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "AUG Para ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=6}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "CBT-97 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=7}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "Grau 556 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=8}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "SIG-716 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=9}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "CZ-117 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=10}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "MP-7 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=11}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "MP-5 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=12}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "Vector-9 Fennec ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=13}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "M-14 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=14}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "CBS-5 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=15}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "M-17 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=16}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "M-1911 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_first_weapon","color": "yellow"}]

playsound minecraft:ui.button.click player @s ~ ~ ~ 10000000 2
scoreboard players operation @s weaponChoice1 = @s chooseWeapon1
scoreboard players set @s chooseWeapon1 0
