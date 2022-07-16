scoreboard players set .matchStarted arcadeRule 1
scoreboard players set @a playerkills 0
tag @a remove DeadPlayer
scoreboard players set @a arcade.plr_deaths 0
clear @a
team leave @a
bossbar set mgdr_arcade:match_time players @a
bossbar set mgdr_arcade:match_time visible true
execute at @e[type=armor_stand,tag=ArcadeAsset,tag=DeathSpawnPoint,limit=1] run spawnpoint @a
execute as @a at @s run function mgdr_arcade:ffa/spawn_players
scoreboard players set .matchTime arcadeRule 9600
function mgdr_arcade:schedules/match_time_schedule
effect give @a regeneration 1 1 true
effect give @a saturation 1 255 true
title @a title {"text": "Free For All","color": "gold"}
title @a subtitle {"text": "Kill every player to gain Points!","color": "yellow"}
tellraw @a ["",{"text": "FFA: ","color": "gold"},{"text": "Kill every player to gain Points!","color": "yellow"}]
playsound minecraft:block.note_block.pling player @s ~ ~10000 ~ 100000 2
