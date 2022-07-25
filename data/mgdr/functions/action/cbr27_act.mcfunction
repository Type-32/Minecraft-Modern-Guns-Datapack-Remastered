execute if score @s aimSec matches 3.. run scoreboard players set @s aimSec 1
scoreboard players set .dist shoot_dist 0
function mgdr:muzzle_flash_light_add
scoreboard players set @s[scores={fireDelay=3..,cbr27.fm=0..1}] fireDelay 0
scoreboard players set @s[scores={fireDelay=5..,cbr27.fm=2}] fireDelay 0

#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 0
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 1
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 2
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 3

#
tag @s add firing
tag @s add firingMarkerDetect
execute anchored eyes run function mgdr:rays/cbr27
scoreboard players operation /player.lastFiredUID mgdr.gamerule = @s mgdr.pid
scoreboard players operation /player.lastFiredWeaponUID mgdr.gamerule = @s mgdr.weaponUID
tag @s remove firing
tag @s remove firingMarkerDetect

#
execute anchored eyes positioned ^ ^ ^1 run function mgdr:action/gun_effects/cbr27
execute if score noRecoil mgdr.gamerule matches ..0 run function mgdr:action/recoil/rec_cbr27

execute if score infiniteAmmo mgdr.gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative] cbr27.ammo 1
