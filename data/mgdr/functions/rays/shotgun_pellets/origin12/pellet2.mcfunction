particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0.01 1 force @s[scores={proj_trace=1..},tag=admin]
execute as @e[dx=0,type=#mgdr:special_entities] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 run function mgdr:damage/special/specification
execute as @e[dx=0,type=!#mgdr:unharmable_entities] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 run function mgdr:damage/origin12_dmg
execute as @a[dx=0,gamemode=!creative,gamemode=!spectator,tag=!firing] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 run function mgdr:damage/player/origin12_dmg
#insert line of code here
execute positioned ^ ^ ^1 unless block ~ ~ ~ #mgdr:penetrable run particle minecraft:crit ~ ~ ~ .01 .01 .01 1.8 5 force
execute positioned ^-.06 ^ ^1 unless block ~ ~ ~ #mgdr:penetrable run playsound mgdr:others.solid_bullet_impact block @a[distance=..11] ~ ~ ~ 10
execute positioned ^-.06 ^ ^1 run function mgdr:func/ray_reset
execute positioned ^-.06 ^ ^1 if block ~ ~ ~ #mgdr:penetrable run function mgdr:rays/shotgun_pellets/origin12/pellet2
