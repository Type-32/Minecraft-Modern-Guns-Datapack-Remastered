scoreboard players set .dist shoot_dist 10000
scoreboard players set @s[tag=!WitherenVest,tag=!CombatMasterVest] hp_dmg 5
scoreboard players set @s[tag=WitherenVest] hp_dmg 3
scoreboard players set @s[tag=CombatMasterVest] hp_dmg 2

particle minecraft:block minecraft:redstone_block ~ ~ ~ .25 .3 .25 3 1 force
scoreboard players set @a[tag=firingMarkerDetect,tag=holdingCBR27A1] whiteHit 0
function mgdr:damage/player/universal_figure
playsound minecraft:ui.button.click voice @a[tag=firingMarkerDetect,tag=holdingCBR27A1] ~ ~1000 ~ 1000000000 2
