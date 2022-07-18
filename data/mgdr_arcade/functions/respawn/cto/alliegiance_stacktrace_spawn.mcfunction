tag @s add tempCheckAl
execute unless entity @a[distance=..5,team=coalition,sort=nearest] run function mgdr_arcade:respawn/end_dfs_allegiance
execute if entity @a[distance=..5,team=coalition,sort=nearest] run execute as @e[tag=!tempCheckAl,tag=CTOSpawnPoint,tag=Allegiance,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/allegiance_stacktrace_spawn
