execute as @e[tag=Alliegiance,tag=SpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/alliegiance_stacktrace_init_spawn
execute as @e[tag=Coalition,tag=SpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/coalition_stacktrace_init_spawn
function mgdr_arcade:respawn/assign_weapons
tag @s remove DeadPlayer
scoreboard players set @s deathTimer 0