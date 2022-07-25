scoreboard players set @s aimSec 1
scoreboard players set .dist shoot_dist 0
function mgdr:muzzle_flash_light_add
scoreboard players set @s[scores={fireDelay=3..}] fireDelay 0

execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 0
execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 1
execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 2
execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 3



tag @s add firing
tag @s add firingMarkerDetect
execute anchored eyes run function mgdr:rays/mp5t
scoreboard players operation /player.lastFiredUID mgdr.gamerule = @s mgdr.pid
tag @s remove firing
tag @s remove firingMarkerDetect


execute anchored eyes positioned ^ ^ ^1 run function mgdr:action/gun_effects/mp5

execute if score noRecoil mgdr.gamerule matches ..0 run tp @s ~ ~ ~ ~ ~-2.9
execute if score infiniteAmmo mgdr.gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative] mp5t.ammo 1
execute if score @s mp5t.ammo matches ..0 at @s run playsound mgdr:others.empty player @s
