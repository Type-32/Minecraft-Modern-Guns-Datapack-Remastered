scoreboard players set .matchStarted arcadeRule 1
scoreboard players set .coalitionPoints arcadeRule 0
scoreboard players set .alliegiancePoints arcadeRule 0
tag @a remove DeadPlayer
scoreboard players set @a arcade.plr_deaths 0
clear @a
scoreboard players operation .expectedAlliegiancePlayers arcadeRule = .totalPlayers arcadeRule
scoreboard players operation .expectedCoalitionPlayers arcadeRule = .totalPlayers arcadeRule
scoreboard players operation .expectedAlliegiancePlayers arcadeRule /= .2 arcadeRule
scoreboard players operation .expectedCoalitionPlayers arcadeRule -= .expectedAlliegiancePlayers arcadeRule
tag @a[team=!] add voluntary
execute as @a[team=] run function mgdr_arcade:assign_random_teams
bossbar set mgdr_arcade:alliegiance_points players @a
bossbar set mgdr_arcade:coalition_points players @a
bossbar set mgdr_arcade:match_time players @a
bossbar set mgdr_arcade:alliegiance_points visible true
bossbar set mgdr_arcade:coalition_points visible true
bossbar set mgdr_arcade:alliegiance_points max 100
bossbar set mgdr_arcade:coalition_points max 100
bossbar set mgdr_arcade:match_time visible true
execute at @e[type=armor_stand,tag=ArcadeAsset,tag=DeathSpawnPoint,limit=1] run spawnpoint @a
execute as @a[team=!] at @s run function mgdr_arcade:cto/spawn_players
scoreboard players set .matchTime arcadeRule 9600
function mgdr_arcade:schedules/match_time_schedule
effect give @a regeneration 1 1 true
effect give @a saturation 1 255 true
title @s title {"text":"Capture The Objective","color": "gold"}
title @s subtitle {"text":"Capture the objectives on the map to obtain points for your team!","color": "yellow"}
tellraw @a ["",{"text": "CTO: ","color": "gold"},{"text": "Capture the objectives on the map to obtain points for your team!","color": "yellow"}]
playsound minecraft:block.note_block.pling player @s ~ ~10000 ~ 100000 2
scoreboard players set @e[tag=ObjectivePoint,type=armor_stand] objectiveCaptureDelay 0