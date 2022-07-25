scoreboard players set .dist shoot_dist 10000
scoreboard players add @s[tag=!WitherenVest,tag=!CombatMasterVest] hp_dmg 6
scoreboard players add @s[tag=WitherenVest] hp_dmg 5
scoreboard players add @s[tag=CombatMasterVest] hp_dmg 4

particle minecraft:block minecraft:redstone_block ~ ~ ~ .25 .3 .25 3 10 force @a[scores={tgl_particle=0}]
scoreboard players set @a[tag=firingMarkerDetect,scores={mgdr.weaponUID=16}] whiteHit 0
#execute if score @s mgdr.plr_death matches 1.. run scoreboard players set @a[tag=firingMarkerDetect,scores={mgdr.weaponUID=16}] redHit 0

playsound minecraft:ui.button.click voice @a[tag=firingMarkerDetect,scores={mgdr.weaponUID=16}] ~ ~1000 ~ 1000000000 2
