tp @s @e[type=armor_stand,tag=ArcadeAsset,tag=DeathSpawnPoint,limit=1]
tp @s @e[type=armor_stand,tag=ArcadeAsset,tag=DeathSpawnPoint,limit=1]
tp @s @e[type=armor_stand,tag=ArcadeAsset,tag=DeathSpawnPoint,limit=1]
scoreboard players set @s arcade.plr_deaths 0
scoreboard players set @s deathTimer 100
title @s title {"text": "You Died!","color": "red"}
title @s subtitle {"text": "You will respawn in 5 seconds.","color": "gold"}
tellraw @s ["",{"text": "You Died!","color": "red","bold": true},{"text": " You will respawn in 5 seconds.","color": "gold"}]
tag @s add DeadPlayer
clear @s
tp @s @e[type=armor_stand,tag=ArcadeAsset,tag=DeathSpawnPoint,limit=1]
tp @s @e[type=armor_stand,tag=ArcadeAsset,tag=DeathSpawnPoint,limit=1]
tp @s @e[type=armor_stand,tag=ArcadeAsset,tag=DeathSpawnPoint,limit=1]
