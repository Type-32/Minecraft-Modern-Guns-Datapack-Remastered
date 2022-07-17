tp @s @e[type=armor_stand,tag=ArcadeAsset,tag=DeathSpawnPoint,limit=1]
tp @s @e[type=armor_stand,tag=ArcadeAsset,tag=DeathSpawnPoint,limit=1]
tp @s @e[type=armor_stand,tag=ArcadeAsset,tag=DeathSpawnPoint,limit=1]
scoreboard players set @s arcade.plr_deaths 0
scoreboard players set @s deathTimer 100
title @s title {"translate": "mgdr_arcade.gamemode.message.match.you_died","color": "red"}
title @s subtitle {"translate": "mgdr_arcade.gamemode.message.match.you_will_respawn","color": "gold"}
tellraw @s ["",{"translate": "mgdr_arcade.gamemode.message.match.you_died","color": "red","bold": true},{"text": " "},{"translate": "mgdr_arcade.gamemode.message.match.you_will_respawn","color": "gold"}]
execute if entity @s[team=coalition] run scoreboard players add .alliegiancePoints arcadeRule 1
execute if entity @s[team=alliegiance] run scoreboard players add .coalitionPoints arcadeRule 1
tag @s add DeadPlayer
clear @s
tp @s @e[type=armor_stand,tag=ArcadeAsset,tag=DeathSpawnPoint,limit=1]
tp @s @e[type=armor_stand,tag=ArcadeAsset,tag=DeathSpawnPoint,limit=1]
tp @s @e[type=armor_stand,tag=ArcadeAsset,tag=DeathSpawnPoint,limit=1]
