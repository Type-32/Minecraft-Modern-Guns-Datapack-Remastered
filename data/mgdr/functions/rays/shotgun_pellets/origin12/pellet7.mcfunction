particle dust 1 1 1 0.2 ~ ~ ~ 0 0 0 3 1 force
execute as @e[dx=0,type=#mgdr:special_entities] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 run function mgdr:damage/special/specification
execute as @e[dx=0,type=!#mgdr:unharmable_entities] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 run function mgdr:damage/origin12_dmg
execute as @e[dx=0,type=player,gamemode=!creative,gamemode=!spectator,tag=!firing] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 run effect give @s instant_damage 1 1 true
execute positioned ^ ^.05 ^1 unless block ~ ~ ~ #mgdr:penetrable run particle minecraft:crit ~ ~ ~ .01 .01 .01 1.8 5 force
execute positioned ^ ^.05 ^1 unless block ~ ~ ~ #mgdr:penetrable run playsound mgdr:others.solid_bullet_impact block @a[distance=..11] ~ ~ ~ 10
execute positioned ^ ^.05 ^1 run function mgdr:func/ray_reset
execute positioned ^ ^.05 ^1 if block ~ ~ ~ #mgdr:penetrable run function mgdr:rays/shotgun_pellets/origin12/pellet7
