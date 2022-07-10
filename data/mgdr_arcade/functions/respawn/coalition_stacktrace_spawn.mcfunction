execute if entity @a[distance=..5] run execute as @e[tag=Coalition,tag=SpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run function mgdr_arcade:respawn/coalition_stacktrace_spawn
execute unless entity @a[distance=..5] run tp @a[tag=DeadPlayer,team=coalition,scores={deathTimer=0}] @s
