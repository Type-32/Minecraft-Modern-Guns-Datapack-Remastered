scoreboard players set .dist shoot_dist 10000
scoreboard players set .weapon_damage_temp mgdr.gamerule 0
scoreboard players operation .weapon_damage_temp mgdr.gamerule = weapon.damage.sig716 mgdr.gamerule
scoreboard players operation .weapon_damage_temp mgdr.gamerule -= @s mgdr.vestDef
scoreboard players operation .weapon_damage_temp mgdr.gamerule += @s hp_dmg

particle minecraft:block minecraft:redstone_block ~ ~ ~ .25 .3 .25 3 2 force @a[scores={tgl_particle=0}]
scoreboard players set @a[tag=firingMarkerDetect,scores={mgdr.weaponUID=17}] whiteHit 0

playsound minecraft:ui.button.click voice @a[tag=firingMarkerDetect,scores={mgdr.weaponUID=17}] ~ ~1000 ~ 1000000000 2
