execute if entity @s[team=allegiance] run execute as @e[tag=Allegiance,tag=SpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/allegiance_stacktrace_spawn
execute if entity @s[team=coalition] run execute as @e[tag=Coalition,tag=SpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/coalition_stacktrace_spawn
function mgdr_arcade:respawn/assign_weapons
tag @s remove DeadPlayer
title @s title " "
title @s subtitle {"translate":"mgdr_arcade.gamemode.message.match.respawned","color": "green"}
playsound minecraft:block.note_block.pling player @s ~ ~10000 ~ 100000 2