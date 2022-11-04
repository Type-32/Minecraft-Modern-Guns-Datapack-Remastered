scoreboard players set .dist shoot_dist 10000
scoreboard objectives add mgdr.health dummy
scoreboard players add @s mgdr.health 0
execute store result score @s mgdr.health run data get entity @s Health
scoreboard players operation @s[type=!armor_stand] mgdr.health -= weapon.damage.m14 mgdr.gamerule
execute if score @s mgdr.health matches 1.. run scoreboard players set @a[tag=PlayerDamageSource,scores={mgdr.weaponUID=10}] whiteHit 0
execute if score @s mgdr.health matches ..0 run scoreboard players set @a[tag=PlayerDamageSource,scores={mgdr.weaponUID=10}] redHit 0
execute if score @s mgdr.health matches 1.. store result entity @s Health float 1 run scoreboard players get @s mgdr.health
execute if score @s mgdr.health matches ..0 run kill @s
execute if score @s mgdr.health matches 1.. run data modify entity @s AngryAt set from entity @p[tag=PlayerDamageSource,scores={mgdr.weaponUID=6}] UUID

particle minecraft:block minecraft:crying_obsidian ~ ~ ~ .25 .3 .25 2 60 force @a[scores={tgl_particle=0}]
