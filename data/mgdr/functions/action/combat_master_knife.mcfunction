scoreboard players set .dist shoot_dist 0

tag @s add firing
tag @s add firingMarkerDetect
execute anchored eyes run function mgdr:rays/combat_master_knife
scoreboard players operation /player.lastFiredUID gamerule = @s mgdr.pid
scoreboard players set /player.lastFiredWeaponUID gamerule 17
tag @s remove firing
tag @s remove firingMarkerDetect


playsound minecraft:item.trident.throw voice @a[distance=..20] ~ ~ ~ 1000 2
#scoreboard players set @s[scores={fireDelay=4..}] fireDelay 0
item replace entity @s[gamemode=!creative] weapon.mainhand with air
