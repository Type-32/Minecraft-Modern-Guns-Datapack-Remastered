execute if entity @s[team=alliegiance] run execute as @e[tag=Alliegiance,tag=CTOSpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/cto/alliegiance_stacktrace_spawn
execute if entity @s[team=coalition] run execute as @e[tag=Coalition,tag=CTOSpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/cto/coalition_stacktrace_spawn
function mgdr_arcade:respawn/assign_weapons
tag @s remove DeadPlayer
title @s title " "
title @s subtitle {"text":"Respawned!","color": "green"}
playsound minecraft:block.note_block.pling player @s ~ ~10000 ~ 1000000
