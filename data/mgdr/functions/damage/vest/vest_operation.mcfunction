execute as @a if score @s mgdr.pid = /player.lastFiredUID mgdr.gamerule run tag @s add PlayerDamageSource
data modify storage mgdr:temp_weapon data.armorItem set from entity @s Inventory[{Slot:102b}]
execute store result score @s mgdr.vestDef run data get storage mgdr:temp_weapon data.armorItem.tag.DefenseValue
scoreboard players operation .vest_temp mgdr.gamerule = @s mgdr.vestDef
execute if score @a[limit=1,tag=PlayerDamageSource] dyn.at matches 1 run scoreboard players operation .weapon_damage_temp mgdr.gamerule -= .vest_temp mgdr.gamerule
execute if score @a[limit=1,tag=PlayerDamageSource] dyn.at matches 2 run scoreboard players operation .weapon_damage_temp mgdr.gamerule -= .1 mgdr.gamerule
#execute if score @a[limit=1,tag=PlayerDamageSource] dyn.at matches 3 run function mgdr:damage/vest/hp_shot
execute if score @a[limit=1,tag=PlayerDamageSource] dyn.at matches 4 run function mgdr:damage/vest/fmj_shot
execute if score @a[limit=1,tag=PlayerDamageSource] dyn.at matches 5 run function mgdr:damage/vest/nato_shot
execute if score @a[limit=1,tag=PlayerDamageSource] dyn.at matches 6 run function mgdr:damage/vest/gzh_shot
execute if score .weapon_damage_temp mgdr.gamerule matches ..-1 run scoreboard players set .weapon_damage_temp mgdr.gamerule 0
