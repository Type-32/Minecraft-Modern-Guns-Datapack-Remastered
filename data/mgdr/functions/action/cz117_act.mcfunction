function mgdr:action/effects/ads_eff
scoreboard players set .dist shoot_dist 0
execute at @s run function mgdr:muzzle_flash_light_add


tag @s add firing
tag @s add firingMarkerDetect
execute anchored eyes run function mgdr:rays/cz117
tag @s remove firing
tag @s remove firingMarkerDetect

execute as @s[predicate=!mgdr:is_sneaking] anchored eyes positioned ^ ^ ^1 run particle campfire_cosy_smoke ^-.3 ^-.15 ^1.1 0 3 0 .07 0 force @s[scores={tgl_particle=0}]
execute as @s[predicate=!mgdr:is_sneaking] anchored eyes positioned ^ ^ ^1 run particle flame ^-.3 ^-.15 ^1 0 0 0 .02 1 force @s[scores={tgl_particle=0}]
execute as @s run playsound mgdr:cz117.fire voice @a[distance=..30] ~ ~ ~ 10
execute if score noRecoil gamerule matches ..0 run tp @s ~ ~ ~ ~ ~-2.2
scoreboard players set @s[scores={fireDelay=3..}] fireDelay 0
execute if score infiniteAmmo gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative] cz117.ammo 1
execute if score @s cz117.ammo matches ..0 at @s run playsound mgdr:common.empty player @s
