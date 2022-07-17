execute as @a[scores={arcade.plr_deaths=1..},tag=!forfeitedMatch] at @s if score .matchStarted arcadeRule matches 1.. run function mgdr_arcade:tdm/death
scoreboard players remove @a[scores={deathTimer=1..}] deathTimer 1
execute as @a[scores={deathTimer=1..}] run function mgdr_arcade:player_mains/afterdeath_effect
execute as @a[scores={deathTimer=0},tag=DeadPlayer,tag=!forfeitedMatch] at @s if score .matchStarted arcadeRule matches 1.. run function mgdr_arcade:tdm/respawn_player
execute if score .matchStarted arcadeRule matches 1.. if score .alliegiancePoints arcadeRule matches 50.. unless score .coalitionPoints arcadeRule matches 50.. run function mgdr_arcade:tdm/end_match
execute if score .matchStarted arcadeRule matches 1.. unless score .alliegiancePoints arcadeRule matches 50.. if score .coalitionPoints arcadeRule matches 50.. run function mgdr_arcade:tdm/end_match
execute if score .matchStarted arcadeRule matches 1.. if score .alliegiancePoints arcadeRule > .coalitionPoints arcadeRule unless score .matchTime arcadeRule matches 1.. run function mgdr_arcade:tdm/end_match
execute if score .matchStarted arcadeRule matches 1.. unless score .alliegiancePoints arcadeRule < .coalitionPoints arcadeRule unless score .matchTime arcadeRule matches 1.. run function mgdr_arcade:tdm/end_match

execute store result bossbar mgdr_arcade:alliegiance_points value run scoreboard players get .alliegiancePoints arcadeRule
execute store result bossbar mgdr_arcade:coalition_points value run scoreboard players get .coalitionPoints arcadeRule

execute if score .matchStarted arcadeRule matches 1.. if score .alliegiancePlayers arcadeRule > .expectedAlliegiancePlayers arcadeRule run function mgdr_arcade:teams/after_assign_alliegiance_dfs
execute if score .matchStarted arcadeRule matches 1.. if score .coalitionPlayers arcadeRule > .expectedCoalitionPlayers arcadeRule run function mgdr_arcade:teams/after_assign_coalition_dfs
execute store result score .alliegiancePlayers arcadeRule if entity @a[team=alliegiance]
execute store result score .coalitionPlayers arcadeRule if entity @a[team=coalition]
execute if score .matchStarted arcadeRule matches 1.. if score .alliegiancePlayers arcadeRule matches 0 run function mgdr_arcade:tdm/end_match
execute if score .matchStarted arcadeRule matches 1.. if score .coalitionPlayers arcadeRule matches 0 run function mgdr_arcade:tdm/end_match
