function mgdr:action/effects/ads_eff
scoreboard players set .dist shoot_dist 0

#function mgdr:action/eject_bullet_shell
tag @s add firing
tag @s add firingMarkerDetect
execute anchored eyes run function mgdr:rays/stg44
tag @s remove firing
tag @s remove firingMarkerDetect

execute as @s[predicate=!mgdr:is_sneaking] anchored eyes positioned ^ ^ ^1 run particle flame ^-.3 ^-.15 ^1 0 0 0 .02 1 force @s[scores={tgl_particle=0}]

playsound mgdr:stg44.fire voice @a[distance=..40] ~ ~ ~ 10

execute if score noRecoil gamerule matches ..0 run tp @s ~ ~ ~ ~ ~-3.2

execute if score infiniteAmmo gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative] stg44.ammo 1
scoreboard players set @s[scores={fireDelay=3..}] fireDelay 0
execute if score @s stg44.ammo matches ..0 at @s run playsound mgdr:common.empty player @s
