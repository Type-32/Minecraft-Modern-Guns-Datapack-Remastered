scoreboard objectives add mgdr.health dummy
scoreboard players add @s mgdr.health 0
execute store result score @s mgdr.health run data get entity @s Health
scoreboard players operation @s[type=!armor_stand] mgdr.health -= weapon.damage. mgdr.gamerule
execute if score @s mgdr.health matches 1.. store result entity @s Health float 1 run scoreboard players get @s mgdr.health
execute if score @s mgdr.health matches ..0 run kill @s
function mgdr:damage/regional/anger_affection/main

particle minecraft:block minecraft:redstone_block ~ ~ ~ .15 .15 .15 1 25 force @a[scores={tgl_particle=0}]
scoreboard objectives remove mgdr.health