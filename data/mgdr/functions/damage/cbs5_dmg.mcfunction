scoreboard players set .dist shoot_dist 10000
scoreboard objectives add mgdr.health dummy
scoreboard players add @s mgdr.health 0
execute store result score @s mgdr.health run data get entity @s Health
scoreboard players operation @s[type=!armor_stand] mgdr.health -= weapon.damage.cbs5 mgdr.gamerule
execute if score @s mgdr.health matches 1.. run scoreboard players set @a[tag=PlayerDamageSource,scores={mgdr.weaponUID=6}] whiteHit 0
execute if score @s mgdr.health matches ..0 run scoreboard players set @a[tag=PlayerDamageSource,scores={mgdr.weaponUID=6}] redHit 0
execute if score @s mgdr.health matches 1.. store result entity @s Health float 1 run scoreboard players get @s mgdr.health
execute if score @s mgdr.health matches ..0 run kill @s
function mgdr:damage/regional/anger_affection/main

particle minecraft:block minecraft:nether_wart_block ~ ~ ~ .25 .25 .25 2 50 force @a[scores={tgl_particle=0}]
particle minecraft:block minecraft:bone_block ~ ~ ~ .25 .25 .25 2 20 force @a[scores={tgl_particle=0}]
