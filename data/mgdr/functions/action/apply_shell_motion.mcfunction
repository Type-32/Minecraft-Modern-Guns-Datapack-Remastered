tag @s remove shellInit

scoreboard players add @s motion_x1 0
scoreboard players add @s motion_y1 0
scoreboard players add @s motion_z1 0
scoreboard players add @s motion_x2 0
scoreboard players add @s motion_y2 0
scoreboard players add @s motion_z2 0

execute store result score @s motion_x1 run data get entity @s Pos[0] 1000
execute store result score @s motion_y1 run data get entity @s Pos[1] 1000
execute store result score @s motion_z1 run data get entity @s Pos[2] 1000

tp @s ^-0.1 ^0.1 ^

execute store result score @s motion_x2 run data get entity @s Pos[0] 1000
execute store result score @s motion_y2 run data get entity @s Pos[1] 1000
execute store result score @s motion_z2 run data get entity @s Pos[2] 1000

scoreboard players operation @s motion_x2 -= @s motion_x1
scoreboard players operation @s motion_y2 -= @s motion_y1
scoreboard players operation @s motion_z2 -= @s motion_z1

execute store result entity @s Motion[0] double 0.0011 run scoreboard players get @s motion_x2
execute store result entity @s Motion[1] double 0.0011 run scoreboard players get @s motion_y2
execute store result entity @s Motion[2] double 0.0011 run scoreboard players get @s motion_z2

summon marker ~ ~ ~ {Tags:["shellPosTemp"]}
tp @s 3000000 10 3000000
tp @s @e[type=marker,limit=1,tag=shellPosTemp]
kill @e[type=marker,tag=shellPosTemp]

#tellraw @a "Debug Motion USed!"