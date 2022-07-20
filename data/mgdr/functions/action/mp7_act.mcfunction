execute if score @s aimSec matches 3.. run scoreboard players set @s aimSec 1
scoreboard players set .dist shoot_dist 0
execute if score @s fireDelay matches 2 run function mgdr:muzzle_flash_light_add
execute if score @s fireDelay matches 4.. run function mgdr:muzzle_flash_light_add
scoreboard players set @s[scores={fireDelay=4..}] fireDelay 0

#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 0
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 1
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 2
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 3



tag @s add firing
tag @s add firingMarkerDetect
execute anchored eyes run function mgdr:rays/mp7
scoreboard players operation /player.lastFiredUID gamerule = @s mgdr.pid
scoreboard players operation /player.lastFiredWeaponUID gamerule = @s mgdr.weaponUID
tag @s remove firing
tag @s remove firingMarkerDetect

execute anchored eyes positioned ^ ^ ^1 run function mgdr:action/gun_effects/mp7

execute if score noRecoil gamerule matches ..0 run tp @s[tag=!haveGrip] ~ ~ ~ ~ ~-1.2
execute if score noRecoil gamerule matches ..0 run tp @s[tag=haveGrip] ~ ~ ~ ~ ~-0.9
#scoreboard players set @s[scores={fireDelay=4..}] fireDelay 0
execute if score infiniteAmmo gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative] mp7.ammo 1
execute if score @s mp7.ammo matches ..0 at @s run playsound mgdr:others.empty player @s
