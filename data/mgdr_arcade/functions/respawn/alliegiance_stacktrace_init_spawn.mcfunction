tag @s add tempCheckAl
execute if entity @a[distance=..5,team=coalition] run execute as @e[tag=!tempCheckAl,tag=Coalition,tag=SpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/alliegiance_stacktrace_init_spawn
execute if entity @a[distance=6..,team=coalition] run function mgdr_arcade:respawn/end_dfs_init_alliegiance
