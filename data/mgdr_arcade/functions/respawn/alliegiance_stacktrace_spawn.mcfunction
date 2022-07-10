execute if entity @a[distance=..5] run execute as @e[tag=SpawnPoint,tag=Alliegiance,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/alliegiance_stacktrace_spawn
execute unless entity @a[distance=..5] run tp @a[tag=DeadPlayer,team=alliegiance,scores={deathTimer=0}] @s
