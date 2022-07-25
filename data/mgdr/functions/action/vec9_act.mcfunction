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
#execute if predicate mgdr:is_sneaking anchored eyes run function mgdr:rays/vec9
execute anchored eyes run function mgdr:action/recoil/spread/vec9
#scoreboard players operation /player.lastFiredWeaponUID mgdr.gamerule = @s mgdr.weaponUID
tag @s remove firing
tag @s remove firingMarkerDetect


execute as @s[predicate=!mgdr:is_sneaking] anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ air run particle dust 1 1 1 3 ^-.3 ^-.15 ^1.1 0 6 0 0.18 0 force @s[scores={tgl_particle=0}]
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ water run particle bubble ^ ^-.15 ^1.1 0 0 0 .03 2 force @s[scores={tgl_particle=0}]
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ air run particle flame ^ ^-.15 ^1 0 0 0 .02 1 force @s[scores={tgl_particle=0}]
playsound mgdr:vec9.fire voice @a[distance=..35] ~ ~ ~ 1000
execute if score noRecoil mgdr.gamerule matches ..0 run tp @s ~ ~ ~ ~ ~-0.9
#scoreboard players set @s[] fireDelay 0
#scoreboard players set @s[scores={fireDelay=3..}] fireDelay 0
execute if score infiniteAmmo mgdr.gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative] vec9.ammo 1
execute if score @s vec9.ammo matches ..0 at @s run playsound mgdr:others.empty player @s
