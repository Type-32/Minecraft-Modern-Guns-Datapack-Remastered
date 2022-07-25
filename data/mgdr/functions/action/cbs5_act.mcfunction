scoreboard players set @s aimSec 1
scoreboard players set .dist shoot_dist 0
function mgdr:muzzle_flash_light_add
scoreboard players set @s fireDelay 0

execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 0
execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 1
execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 2
execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 3

tag @s add firing
tag @s add firingMarkerDetect
execute if predicate mgdr:is_sneaking anchored eyes run function mgdr:rays/cbs5
execute unless predicate mgdr:is_sneaking anchored eyes run function mgdr:action/recoil/spread/cbs5
scoreboard players operation /player.lastFiredUID mgdr.gamerule = @s mgdr.pid
scoreboard players operation /player.lastFiredWeaponUID mgdr.gamerule = @s mgdr.weaponUID
tag @s remove firing
tag @s remove firingMarkerDetect

execute anchored eyes positioned ^ ^ ^1 run function mgdr:action/gun_effects/cbs5

execute if score noRecoil mgdr.gamerule matches ..0 run tp @s ~ ~ ~ ~ ~-5
#execute if score noRecoil mgdr.gamerule matches ..0 run tp @s[name="LiBai233"] ~ ~ ~ ~ ~-5
scoreboard players set @s cbs5.load 1
execute if score infiniteAmmo mgdr.gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative] cbs5.ammo 1
