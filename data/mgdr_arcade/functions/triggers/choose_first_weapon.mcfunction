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
execute if score @s chooseWeapon1 matches 17.. run tellraw @s ["",{"text": "Weapon ","color": "red"},{"text": "#","color": "gold"},{"color": "gold","score":{"name": "@s","objective": "chooseWeapon1"}},{"text": " Does Not Exist! You can choose another weapon using ","color": "red"},{"text": "/trigger chooseWeapon1 set ","color": "gold"},{"text": "<Weapon Number>","color": "green"}]
tellraw @s[scores={chooseWeapon1=1}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "CBR-27 ","color": "green"},{"text": "as your first weapon.","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=2}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "CBR-27-A1 ","color": "green"},{"text": "as your first weapon.","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=3}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "AK-40 ","color": "green"},{"text": "as your first weapon.","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=4}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "AS-VAL ","color": "green"},{"text": "as your first weapon.","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=5}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "AUG Para ","color": "green"},{"text": "as your first weapon.","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=6}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "CBT-97 ","color": "green"},{"text": "as your first weapon.","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=7}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "Grau 556 ","color": "green"},{"text": "as your first weapon.","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=8}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "SIG-716 ","color": "green"},{"text": "as your first weapon.","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=9}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "CZ-117 ","color": "green"},{"text": "as your first weapon.","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=10}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "MP-7 ","color": "green"},{"text": "as your first weapon.","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=11}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "MP-5 ","color": "green"},{"text": "as your first weapon.","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=12}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "Vector-9 Fennec ","color": "green"},{"text": "as your first weapon.","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=13}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "M-14 ","color": "green"},{"text": "as your first weapon.","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=14}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "CBS-5 ","color": "green"},{"text": "as your first weapon.","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=15}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "M-17 ","color": "green"},{"text": "as your first weapon.","color": "yellow"}]
tellraw @s[scores={chooseWeapon1=16}] ["",{"text": "You have chosen ","color": "yellow"},{"text": "M-1911 ","color": "green"},{"text": "as your first weapon.","color": "yellow"}]

scoreboard players operation @s weaponChoice1 = @s chooseWeapon1
scoreboard players set @s chooseWeapon1 0
