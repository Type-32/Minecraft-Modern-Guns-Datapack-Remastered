scoreboard players set .dist shoot_dist 10000
scoreboard objectives add mgdr.health dummy
scoreboard players add @s mgdr.health 0
execute store result score @s mgdr.health run data get entity @s Health
scoreboard players remove @s[type=!armor_stand] mgdr.health 8
execute if score @s mgdr.health matches 1.. run scoreboard players set @a[tag=firingMarkerDetect,tag=holdingASVAL] whiteHit 0
execute if score @s mgdr.health matches ..0 run scoreboard players set @a[tag=firingMarkerDetect,tag=holdingASVAL] redHit 0
execute if score @s mgdr.health matches 1.. store result entity @s Health float 1 run scoreboard players get @s mgdr.health
execute if score @s mgdr.health matches ..0 run kill @s
particle minecraft:block minecraft:red_concrete_powder ~ ~ ~ .15 .15 .15 1 25 force
