scoreboard players set .matchStarted arcadeRule 1
scoreboard players set .coalitionPoints arcadeRule 0
scoreboard players set .allegiancePoints arcadeRule 0
tag @a remove DeadPlayer
tag @a remove voluntary
scoreboard players set @a a_match.playerKills 0
scoreboard players set @a a_match.playerKillStreak 0
scoreboard players set @a arcade.plr_deaths 0
scoreboard players set @a playerLeftGame 0
tag @a remove forfeitedMatch
clear @a

scoreboard players operation .expectedAllegiancePlayers arcadeRule = .totalPlayers arcadeRule
scoreboard players operation .expectedCoalitionPlayers arcadeRule = .totalPlayers arcadeRule
scoreboard players operation .expectedAllegiancePlayers arcadeRule /= .2 arcadeRule
scoreboard players operation .expectedCoalitionPlayers arcadeRule -= .expectedAllegiancePlayers arcadeRule
execute as @a[team=] run function mgdr_arcade:assign_random_teams
tag @a[team=!] add voluntary
bossbar set mgdr_arcade:allegiance_points players @a
bossbar set mgdr_arcade:coalition_points players @a
bossbar set mgdr_arcade:match_time players @a
bossbar set mgdr_arcade:allegiance_points max 50
bossbar set mgdr_arcade:coalition_points max 50
bossbar set mgdr_arcade:allegiance_points visible true
bossbar set mgdr_arcade:coalition_points visible true
bossbar set mgdr_arcade:match_time visible true
execute at @e[type=armor_stand,tag=ArcadeAsset,tag=DeathSpawnPoint,limit=1] run spawnpoint @a
execute as @a[team=!] at @s run function mgdr_arcade:tdm/spawn_players
scoreboard players set .matchTime arcadeRule 9600
function mgdr_arcade:schedules/match_time_schedule
effect give @a regeneration 1 1 true
effect give @a saturation 1 255 true
title @a title {"translate": "mgdr_arcade.gamemode.message.tdm","color": "gold"}
title @a subtitle {"translate": "mgdr_arcade.gamemode.message.tdm.desc","color": "yellow"}
tellraw @a ["",{"translate": "mgdr_arcade.gamemode.message.tdm.abbv","color": "gold"},{"translate": "mgdr_arcade.gamemode.message.tdm.desc","color": "yellow"}]
playsound minecraft:block.note_block.pling player @s ~ ~10000 ~ 100000 2
advancement grant @a only mgdr:arcade/matches/trophies/the_rookie_trophy
