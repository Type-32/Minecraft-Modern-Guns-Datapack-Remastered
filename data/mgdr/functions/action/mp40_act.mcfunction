function mgdr:action/effects/ads_eff
scoreboard players set .dist shoot_dist 0
execute at @s run function mgdr:muzzle_flash_light_add


tag @s add firing
tag @s add firingMarkerDetect
execute anchored eyes run function mgdr:rays/mp40
tag @s remove firing
tag @s remove firingMarkerDetect

execute as @s[predicate=!mgdr:is_sneaking] anchored eyes positioned ^ ^ ^1 if block ~ ~1 ~ air run particle dust 1 1 1 3 ^-.3 ^-.15 ^1.1 0 6 0 0.18 0 force @s[scores={tgl_particle=0}]
execute anchored eyes positioned ^ ^ ^1 if block ~ ~1 ~ water run particle bubble ^ ^-.15 ^1.1 0 0 0 .03 2 force @s[scores={tgl_particle=0}]
execute anchored eyes positioned ^ ^ ^1 if block ~ ~1 ~ air run particle flame ^ ^-.15 ^1 0 0 0 .02 1 force @s[scores={tgl_particle=0}]

playsound mgdr:mp40.fire voice @a[distance=..40] ~ ~ ~ 10

execute if score noRecoil gamerule matches ..0 run tp @s ~ ~ ~ ~ ~-3

execute if score infiniteAmmo gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative] mp40.ammo 1
scoreboard players set @s[scores={fireDelay=3..}] fireDelay 0
execute if score @s mp40.ammo matches ..0 at @s run playsound mgdr:common.empty player @s
