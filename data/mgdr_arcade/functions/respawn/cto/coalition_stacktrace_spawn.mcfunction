tag @s add tempCheckCo
execute unless entity @a[distance=..5,team=alliegiance,sort=nearest] run function mgdr_arcade:respawn/end_dfs_coalition
execute if entity @a[distance=..5,team=alliegiance,sort=nearest] run execute as @e[tag=!tempCheckCo,tag=Coalition,tag=CTOSpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/coalition_stacktrace_spawn
