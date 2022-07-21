scoreboard players set @s aimSec 1
scoreboard players set .dist shoot_dist 0
function mgdr:muzzle_flash_light_add
scoreboard players set @s[scores={fireDelay=3..}] fireDelay 0

#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 0
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 1
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 2
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 3


#
tag @s add firing
tag @s add firingMarkerDetect
execute anchored eyes run function mgdr:rays/cbr27a1
scoreboard players operation /player.lastFiredUID gamerule = @s mgdr.pid
scoreboard players operation /player.lastFiredWeaponUID gamerule = @s mgdr.weaponUID
tag @s remove firing
tag @s remove firingMarkerDetect

execute anchored eyes positioned ^ ^ ^1 run function mgdr:action/gun_effects/cbr27a1

execute if score noRecoil gamerule matches ..0 run tp @s[tag=!haveGrip] ~ ~ ~ ~ ~-1.4
execute if score noRecoil gamerule matches ..0 run tp @s[tag=haveGrip] ~ ~ ~ ~ ~-0.8

execute if score infiniteAmmo gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative] cbr27a1.ammo 1
