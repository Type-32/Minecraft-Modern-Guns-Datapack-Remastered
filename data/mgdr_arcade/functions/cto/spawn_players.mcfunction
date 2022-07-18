execute as @e[tag=Allegiance,tag=CTOSpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/cto/allegiance_stacktrace_init_spawn
execute as @e[tag=Coalition,tag=CTOSpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/cto/coalition_stacktrace_init_spawn
function mgdr_arcade:respawn/assign_weapons
tag @s remove DeadPlayer
scoreboard players set @s deathTimer 0
