execute if score @s aimSec matches 3.. run scoreboard players set @s aimSec 1
scoreboard players set .dist shoot_dist 0
function mgdr:muzzle_flash_light_add
scoreboard players set @s[scores={fireDelay=3..,augpara.fm=0}] fireDelay 0
scoreboard players set @s[scores={fireDelay=5..,augpara.fm=1}] fireDelay 0

#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 0
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 1
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 2
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 3



tag @s add firing
tag @s add firingMarkerDetect
execute anchored eyes run function mgdr:rays/augpara
scoreboard players operation /player.lastFiredUID mgdr.gamerule = @s mgdr.pid
scoreboard players operation /player.lastFiredWeaponUID mgdr.gamerule = @s mgdr.weaponUID
tag @s remove firing
tag @s remove firingMarkerDetect

execute anchored eyes positioned ^ ^ ^1 run function mgdr:action/gun_effects/augpara

execute if score noRecoil mgdr.gamerule matches ..0 run tp @s[tag=!haveGrip] ~ ~ ~ ~ ~-1.6
execute if score noRecoil mgdr.gamerule matches ..0 run tp @s[tag=haveGrip] ~ ~ ~ ~ ~-1
#scoreboard players set @s[scores={fireDelay=4..}] fireDelay 0
execute if score infiniteAmmo mgdr.gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative] augpara.ammo 1
execute if score @s augpara.ammo matches ..0 at @s run playsound mgdr:others.empty player @s
