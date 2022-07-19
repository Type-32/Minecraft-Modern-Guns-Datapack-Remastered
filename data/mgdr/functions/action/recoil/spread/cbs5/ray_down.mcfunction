execute if block ~ ~ ~ water run particle bubble_pop ~ ~ ~ 0 0 0 0.01 1 force @a
particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0.1 1 force @s[tag=admin,scores={proj_trace=1}]
execute as @e[dx=0,type=#mgdr:special_entities] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 run function mgdr:damage/special/specification
execute as @e[dx=0,type=!#mgdr:unharmable_entities] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 run function mgdr:damage/cbs5_dmg
execute as @a[dx=0,gamemode=!creative,gamemode=!spectator,tag=!firing] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 run function mgdr:damage/player/cbs5_dmg
#insert line of code here
execute positioned ^ ^-.2 ^1 unless block ~ ~ ~ #mgdr:penetrable run function mgdr:func/ray_hit
execute positioned ^ ^-.2 ^1 if block ~ ~ ~ #mgdr:chance_penetrable if predicate mgdr:quarter_chance run function mgdr:action/recoil/spread/cbs5/ray_down
execute positioned ^ ^-.2 ^1 run function mgdr:func/ray_reset
scoreboard players add .dist shoot_dist 1
execute if score .dist shoot_dist matches ..240 positioned ^ ^-.2 ^1 if block ~ ~ ~ #mgdr:penetrable run function mgdr:action/recoil/spread/cbs5/ray_down
