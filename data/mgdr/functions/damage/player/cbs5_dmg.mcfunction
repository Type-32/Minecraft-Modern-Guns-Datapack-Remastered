scoreboard players set .dist shoot_dist 10000
scoreboard players set @s[tag=!WitherenVest,tag=!CombatMasterVest] hp_dmg 30
scoreboard players set @s[tag=WitherenVest] hp_dmg 28
scoreboard players set @s[tag=CombatMasterVest] hp_dmg 20

particle minecraft:block minecraft:redstone_block ~ ~ ~ .25 .3 .25 3 70 force @a[scores={tgl_particle=0}]
scoreboard players set @a[tag=firingMarkerDetect,scores={mgdr.weaponUID=6}] whiteHit 0

playsound minecraft:ui.button.click voice @a[tag=firingMarkerDetect,scores={mgdr.weaponUID=6}] ~ ~1000 ~ 1000000000 2
