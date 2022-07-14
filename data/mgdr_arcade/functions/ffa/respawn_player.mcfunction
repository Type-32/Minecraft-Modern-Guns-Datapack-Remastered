execute as @e[tag=FreeForAll,tag=SpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/ffa_stacktrace_spawn
function mgdr_arcade:respawn/assign_weapons
tag @s remove DeadPlayer
title @s subtitle {"text":"Respawned!","color": "green"}