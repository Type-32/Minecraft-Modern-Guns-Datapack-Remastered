execute if entity @s[team=alliegiance] run execute as @e[tag=Alliegiance,tag=SpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/alliegiance_stacktrace_spawn
execute if entity @s[team=coalition] run execute as @e[tag=Coalition,tag=SpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/coalition_stacktrace_spawn
function mgdr_arcade:respawn/assign_weapons
tag @s remove DeadPlayer