scoreboard players set .dist shoot_dist 10000
scoreboard players set @s hp_dmg 22

particle minecraft:block minecraft:redstone_block ~ ~ ~ .3 .3 .3 3 10 force
particle minecraft:block minecraft:bone_block ~ ~ ~ .3 .3 .3 3 5 force
scoreboard players set @a[tag=firingMarkerDetect,tag=holdingCBMKnife] whiteHit 0
function mgdr:damage/player/universal_figure
playsound minecraft:ui.button.click voice @a[tag=firingMarkerDetect,tag=holdingCBMKnife] ~ ~1000 ~ 1000000000 2
