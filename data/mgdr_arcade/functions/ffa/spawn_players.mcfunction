execute as @e[tag=FreeForAll,tag=SpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/ffa_stacktrace_init_spawn
function mgdr_arcade:respawn/assign_weapons
tag @s remove DeadPlayer
scoreboard players set @s deathTimer 0