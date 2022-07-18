function mgdr:action/effects/ads_eff
scoreboard players set .dist shoot_dist 0
function mgdr:muzzle_flash_light_add

#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 0
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 1
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 2
#execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 3


tag @s add firing
tag @s add firingMarkerDetect
execute anchored eyes run function mgdr:rays/m17
scoreboard players operation /player.lastFiredUID gamerule = @s mgdr.pid
scoreboard players operation /player.lastFiredWeaponUID gamerule = @s mgdr.weaponUID
tag @s remove firing
tag @s remove firingMarkerDetect


execute as @s[predicate=!mgdr:is_sneaking] anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ air run particle dust 1 1 1 3 ^-.3 ^-.15 ^1.1 0 6 0 0.18 0 force @s[scores={tgl_particle=0}]
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ water run particle bubble ^ ^-.15 ^1.1 0 0 0 .03 2 force @s[scores={tgl_particle=0}]
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ air run particle flame ^ ^-.15 ^1 0 0 0 .02 1 force @s[scores={tgl_particle=0}]
playsound mgdr:m17.fire block @a[distance=..30] ~ ~ ~ 100
execute if score noRecoil gamerule matches ..0 run tp @s ~ ~ ~ ~ ~-2.5
execute if score infiniteAmmo gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative] m17.ammo 1
execute if score @s m17.ammo matches ..0 at @s run playsound mgdr:others.empty player @s
