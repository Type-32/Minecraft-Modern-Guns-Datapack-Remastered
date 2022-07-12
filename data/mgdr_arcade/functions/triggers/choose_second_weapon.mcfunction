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
execute if score @s chooseWeapon2 matches 17.. run tellraw @s ["",{"translate": "mgdr_arcade.message.loadout.weapon_translate","color": "red"},{"text": "#","color": "gold"},{"color": "gold","score":{"name": "@s","objective": "chooseWeapon2"}},{"translate": "mgdr_arcade.message.loadout.weapon_doesnt_exist","color": "red"},{"text": "/trigger chooseWeapon2 set ","color": "gold"},{"translate": "mgdr_arcade.message.loadout.weapon_number","color": "green"}]
tellraw @s[scores={chooseWeapon2=1}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"text": "CBR-27 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon2=2}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"text": "CBR-27-A1 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon2=3}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"text": "AK-40 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon2=4}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"text": "AS-VAL ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon2=5}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"text": "AUG Para ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon2=6}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"text": "CBT-97 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon2=7}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"text": "Grau 556 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon2=8}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"text": "SIG-716 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon2=9}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"text": "CZ-117 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon2=10}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"text": "MP-7 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon2=11}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"text": "MP-5 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon2=12}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "Vector-9 Fennec ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon2=13}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "M-14 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon2=14}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "CBS-5 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon2=15}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "M-17 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_weapon","color": "yellow"}]
tellraw @s[scores={chooseWeapon2=16}] ["",{"translate": "mgdr_arcade.message.loadout.you_have_chosen","color": "yellow"},{"translate": "M-1911 ","color": "green"},{"translate": "mgdr_arcade.message.loadout.as_your_second_weapon","color": "yellow"}]

playsound minecraft:ui.button.click player @s ~ ~ ~ 10000000 2
scoreboard players operation @s weaponChoice2 = @s chooseWeapon2
scoreboard players set @s chooseWeapon2 0
