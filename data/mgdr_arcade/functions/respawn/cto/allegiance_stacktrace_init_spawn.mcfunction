tag @s add tempCheckAl
execute unless entity @a[distance=..5,team=coalition] run function mgdr_arcade:respawn/end_dfs_init_allegiance
execute if entity @a[distance=..5,team=coalition] run execute as @e[tag=!tempCheckAl,tag=Allegiance,tag=CTOSpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/allegiance_stacktrace_init_spawn
