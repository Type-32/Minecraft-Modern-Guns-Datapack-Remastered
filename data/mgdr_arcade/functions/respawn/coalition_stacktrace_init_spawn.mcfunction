tag @s add tempCheckCo
execute unless entity @a[distance=..5,team=alliegiance] run function mgdr_arcade:respawn/end_dfs_init_coalition
execute if entity @a[distance=..5,team=alliegiance] run execute as @e[tag=!tempCheckCo,tag=Coalition,tag=SpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/coalition_stacktrace_init_spawn