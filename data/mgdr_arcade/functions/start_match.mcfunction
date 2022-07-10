scoreboard players set .matchStarted arcadeRule 1
scoreboard players set .coalitionPoints arcadeRule 0
scoreboard players set .alliegiancePoints arcadeRule 0
tag @a remove DeadPlayer
scoreboard players set @a arcade.plr_deaths 0
clear @s
scoreboard players operation .expectedAlliegiancePlayers arcadeRule = .totalPlayers arcadeRule
scoreboard players operation .expectedCoalitionPlayers arcadeRule = .totalPlayers arcadeRule
scoreboard players operation .expectedAlliegiancePlayers arcadeRule /= .2 arcadeRule
scoreboard players operation .expectedCoalitionPlayers arcadeRule -= .expectedAlliegiancePlayers arcadeRule
execute as @a[team=] run function mgdr_arcade:assign_random_teams
execute as @a[team=!] at @s run function mgdr_arcade:spawn_players
bossbar set mgdr_arcade:alliegiance_points visible true
bossbar set mgdr_arcade:coalition_points visible true
