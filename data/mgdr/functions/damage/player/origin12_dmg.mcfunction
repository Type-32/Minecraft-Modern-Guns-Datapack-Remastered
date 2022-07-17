scoreboard players set .dist shoot_dist 10000
scoreboard players set @s[tag=!WitherenVest,tag=!CombatMasterVest] hp_dmg 5
scoreboard players set @s[tag=WitherenVest] hp_dmg 4
scoreboard players set @s[tag=CombatMasterVest] hp_dmg 3

particle minecraft:block minecraft:redstone_block ~ ~ ~ .25 .3 .25 3 10 force
scoreboard players set @a[tag=firingMarkerDetect,tag=holdingAK] whiteHit 0
#execute if score @s mgdr.plr_death matches 1.. run scoreboard players set @a[tag=firingMarkerDetect,tag=holdingAK] redHit 0
function mgdr:damage/player/universal_figure
playsound minecraft:ui.button.click voice @a[tag=firingMarkerDetect,tag=holdingAK] ~ ~1000 ~ 1000000000 2
