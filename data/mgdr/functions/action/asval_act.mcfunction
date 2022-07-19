execute if score @s aimSec matches 3.. run function mgdr:action/effects/ads_eff
scoreboard players set .dist shoot_dist 0
function mgdr:muzzle_flash_light_add

#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 0
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 1
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 2
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 3


tag @s add firing
tag @s add firingMarkerDetect
execute anchored eyes run function mgdr:rays/asval
scoreboard players operation /player.lastFiredUID gamerule = @s mgdr.pid
scoreboard players operation /player.lastFiredWeaponUID gamerule = @s mgdr.weaponUID
tag @s remove firing
tag @s remove firingMarkerDetect

execute anchored eyes positioned ^ ^ ^1 run function mgdr:action/gun_effects/asval

execute if score noRecoil gamerule matches ..0 run tp @s[tag=!haveGrip] ~ ~ ~ ~ ~-1.5
execute if score noRecoil gamerule matches ..0 run tp @s[tag=haveGrip] ~ ~ ~ ~ ~-0.8

execute if score infiniteAmmo gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative] asval.ammo 1
scoreboard players set @s[scores={fireDelay=3..,asval.fm=0..1}] fireDelay 0
scoreboard players set @s[scores={fireDelay=5..,asval.fm=2}] fireDelay 0
execute if score @s asval.ammo matches ..0 at @s run playsound mgdr:others.empty player @s
