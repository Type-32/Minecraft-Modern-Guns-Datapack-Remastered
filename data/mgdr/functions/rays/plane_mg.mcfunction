particle dust 1 1 1 0.4 ~ ~ ~ 0 0 0 5 1 force
particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0.1 1 force @s[tag=admin,scores={proj_trace=1}]
execute as @e[dx=0,type=#mgdr:special_entities] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 run function mgdr:damage/special/specification
execute as @e[dx=0,type=!#mgdr:unharmable_entities] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 run function mgdr:damage/plane_mg_dmg
execute as @e[dx=0,type=minecart,tag=rider] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 run function mgdr:damage/plane_mg_dmg
execute as @e[dx=0,type=player,gamemode=!creative,gamemode=!spectator,tag=!firing] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 run function mgdr:damage/player/plane_mg_dmg
#insert line of code here
execute positioned ^ ^ ^1 unless block ~ ~ ~ #mgdr:penetrable run function mgdr:func/ray_hit
execute positioned ^ ^ ^1 unless block ~ ~ ~ #mgdr:penetrable run particle minecraft:smoke ~ ~ ~ 0 1.5 0 1.8 0 force
execute positioned ^ ^ ^1 if block ~ ~ ~ #mgdr:chance_penetrable if predicate mgdr:quarter_chance run function mgdr:rays/plane_mg
execute positioned ^ ^ ^1 run function mgdr:func/ray_reset
scoreboard players add .dist shoot_dist 1
execute if score .dist shoot_dist matches ..350 positioned ^ ^ ^1 if block ~ ~ ~ #mgdr:penetrable run function mgdr:rays/plane_mg
