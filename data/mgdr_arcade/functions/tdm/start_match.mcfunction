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
execute as @a[team=] run function mgdr_arcade:assign_random_teams
tag @a[team=!] add voluntary
bossbar set mgdr_arcade:alliegiance_points players @a
bossbar set mgdr_arcade:coalition_points players @a
bossbar set mgdr_arcade:match_time players @a
bossbar set mgdr_arcade:alliegiance_points visible true
bossbar set mgdr_arcade:coalition_points visible true
bossbar set mgdr_arcade:match_time visible true
execute at @e[type=armor_stand,tag=ArcadeAsset,tag=DeathSpawnPoint,limit=1] run spawnpoint @a
execute as @a[team=!] at @s run function mgdr_arcade:tdm/spawn_players
scoreboard players set .matchTime arcadeRule 9600
function mgdr_arcade:schedules/match_time_schedule
effect give @a regeneration 1 1 true
effect give @a saturation 1 255 true
title @a title {"text": "Team Death Match","color": "gold"}
title @a subtitle {"text": "Kill Your Opponents to gain Points for your Team!","color": "yellow"}