scoreboard players set .dist shoot_dist 10000
scoreboard players set @s[tag=!WitherenVest,tag=!CombatMasterVest] hp_dmg 9
scoreboard players set @s[tag=WitherenVest] hp_dmg 7
scoreboard players set @s[tag=CombatMasterVest] hp_dmg 6

particle minecraft:block minecraft:redstone_block ~ ~ ~ .3 .3 .3 3 1 force
scoreboard players set @a[tag=firingMarkerDetect,tag=holdingAUGPara] whiteHit 0
function mgdr:damage/player/universal_figure
playsound minecraft:ui.button.click voice @a[tag=firingMarkerDetect,tag=holdingAUGPara] ~ ~1000 ~ 1000000000 2
