scoreboard players set .dist shoot_dist 10000
scoreboard players set @s hp_dmg 22

particle minecraft:block minecraft:redstone_block ~ ~ ~ .3 .3 .3 3 10 force @a[scores={tgl_particle=0}]
particle minecraft:block minecraft:bone_block ~ ~ ~ .3 .3 .3 3 5 force @a[scores={tgl_particle=0}]
scoreboard players set @a[tag=PlayerDamageSource,scores={mgdr.weaponUID=22}] whiteHit 0

playsound minecraft:ui.button.click voice @a[tag=PlayerDamageSource,scores={mgdr.weaponUID=22}] ~ ~1000 ~ 1000000000 2
