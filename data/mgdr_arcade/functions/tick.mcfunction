scoreboard players add @a arcade.plr_deaths 0
scoreboard players add @a arcadeRule 0
scoreboard players add @a deathTimer 0
scoreboard players add @a weaponLoadout 0
scoreboard players add @a equipmentLoadout 0
scoreboard players add @a chooseWeapon1 0
scoreboard players add @a chooseWeapon2 0
scoreboard players add @a chooseEquipment1 0
scoreboard players add @a chooseEquipment2 0
scoreboard players add @a weaponChoice1 0
scoreboard players add @a weaponChoice2 0
scoreboard players add @a equipmentChoice1 0
scoreboard players add @a equipmentChoice2 0
scoreboard players add @a playerkills 0
scoreboard players add @a tempHighScore 0

scoreboard players enable @a weaponLoadout
scoreboard players enable @a equipmentLoadout
scoreboard players enable @a chooseWeapon1
scoreboard players enable @a chooseWeapon2
scoreboard players enable @a chooseEquipment1
scoreboard players enable @a chooseEquipment2

execute store result score .alliegiancePlayers arcadeRule if entity @a[team=alliegiance]
execute store result score .coalitionPlayers arcadeRule if entity @a[team=coalition]
execute store result score .totalPlayers arcadeRule if entity @a

execute if score .gamemode arcadeRule matches 0 run function mgdr_arcade:tdm_main
execute if score .gamemode arcadeRule matches 1 run function mgdr_arcade:ffa_main

execute as @a[scores={weaponLoadout=1..}] at @s run function mgdr_arcade:triggers/weapon_loadout
execute as @a[scores={equipmentLoadout=1..}] at @s run function mgdr_arcade:triggers/equipment_loadout
execute as @a[scores={chooseWeapon1=1..}] at @s run function mgdr_arcade:triggers/choose_first_weapon
execute as @a[scores={chooseWeapon2=1..}] at @s run function mgdr_arcade:triggers/choose_second_weapon
execute as @a[scores={chooseEquipment1=1..}] at @s run function mgdr_arcade:triggers/choose_first_equipment
execute as @a[scores={chooseEquipment2=1..}] at @s run function mgdr_arcade:triggers/choose_second_equipment