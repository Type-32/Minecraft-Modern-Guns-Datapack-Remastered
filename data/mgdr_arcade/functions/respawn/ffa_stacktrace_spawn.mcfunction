tag @s add tempCheckFFA
execute if entity @a[distance=..3,sort=nearest] run execute as @e[tag=!tempCheckFFA,tag=FreeForAll,tag=SpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/ffa_stacktrace_spawn
execute unless entity @a[distance=..3,sort=nearest] run function mgdr_arcade:respawn/end_dfs_ffa
