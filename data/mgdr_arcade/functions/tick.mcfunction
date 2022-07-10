scoreboard players add @a arcade.plr_deaths 0
scoreboard players add @a arcadeRule 0
scoreboard players add @a deathTimer 0
scoreboard players add @a chooseWeapon1 0
scoreboard players add @a chooseWeapon2 0
scoreboard players add @a chooseEquipment1 0
scoreboard players add @a chooseEquipment2 0
scoreboard players add @a weaponChoice1 0
scoreboard players add @a weaponChoice2 0
scoreboard players add @a equipmentChoice1 0
scoreboard players add @a equipmentChoice2 0

scoreboard players enable @a chooseWeapon1
scoreboard players enable @a chooseWeapon2
scoreboard players enable @a chooseEquipment1
scoreboard players enable @a chooseEquipment2

execute store result score .alliegiancePlayers arcadeRule if entity @a[team=alliegiance]
execute store result score .coalitionPlayers arcadeRule if entity @a[team=coalition]
execute store result score .totalPlayers arcadeRule if entity @a[team=]

execute as @a[scores={arcade.plr_deaths=1..}] at @s if score .matchStarted arcadeRule matches 1.. run function mgdr_arcade:death
scoreboard players remove @a[scores={deathTimer=1..}] deathTimer 1
execute as @a[scores={deathTimer=0},tag=DeadPlayer] at @s if score .matchStarted arcadeRule matches 1.. run function mgdr_arcade:respawn_player
execute if score .matchStarted arcadeRule matches 1.. if score .alliegiancePoints arcadeRule matches 100.. unless score .coalitionPoints arcadeRule matches 100.. run function mgdr_arcade:end_match
execute if score .matchStarted arcadeRule matches 1.. unless score .alliegiancePoints arcadeRule matches 100.. if score .coalitionPoints arcadeRule matches 100.. run function mgdr_arcade:end_match

execute store result bossbar mgdr_arcade:alliegiance_points value run scoreboard players get .alliegiancePoints arcadeRule
execute store result bossbar mgdr_arcade:coalition_points value run scoreboard players get .coalitionPoints arcadeRule

execute as @a[scores={chooseWeapon1=1..}] at @s run function mgdr_arcade:triggers/choose_first_weapon
execute as @a[scores={chooseWeapon2=1..}] at @s run function mgdr_arcade:triggers/choose_second_weapon
execute as @a[scores={chooseEquipment1=1..}] at @s run function mgdr_arcade:triggers/choose_first_equipment
execute as @a[scores={chooseEquipment2=1..}] at @s run function mgdr_arcade:triggers/choose_second_equipment
