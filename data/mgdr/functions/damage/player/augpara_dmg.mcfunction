scoreboard players set .dist shoot_dist 10000
scoreboard players add .weapon_damage_temp mgdr.gamerule 0
scoreboard players operation .weapon_damage_temp mgdr.gamerule = weapon.damage.augpara mgdr.gamerule
function mgdr:damage/vest/vest_operation
#scoreboard players operation .weapon_damage_temp mgdr.gamerule -= @s mgdr.vestDef
scoreboard players operation @s hp_dmg += .weapon_damage_temp mgdr.gamerule

particle minecraft:block minecraft:redstone_block ~ ~ ~ .3 .3 .3 3 1 force @a[scores={tgl_particle=0}]
scoreboard players set @a[tag=PlayerDamageSource,scores={mgdr.weaponUID=3}] whiteHit 0

playsound minecraft:ui.button.click voice @a[tag=PlayerDamageSource,scores={mgdr.weaponUID=3}] ~ ~1000 ~ 1000000000 2
