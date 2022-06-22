function mgdr:action/effects/ads_eff
scoreboard players set .dist shoot_dist 0
function mgdr:muzzle_flash_light_add


tag @s add firing
tag @s add firingMarkerDetect
execute anchored eyes run function mgdr:rays/grau556
tag @s remove firing
tag @s remove firingMarkerDetect


execute as @s[predicate=!mgdr:is_sneaking] anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ air run particle dust 1 1 1 3 ^-.3 ^-.15 ^1.1 0 6 0 0.18 0 force @s[scores={tgl_particle=0}]
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ water run particle bubble ^ ^-.15 ^1.1 0 0 0 .03 2 force @s[scores={tgl_particle=0}]
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ air run particle flame ^ ^-.15 ^1 0 0 0 .02 1 force @s[scores={tgl_particle=0}]

playsound mgdr:grau556.fire voice @a[distance=..38] ~ ~ ~ 1000

execute if score noRecoil gamerule matches ..0 run tp @s ~ ~ ~ ~ ~-3.2

execute if score infiniteAmmo gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative] grau.ammo 1
scoreboard players set @s[scores={fireDelay=3..,grau.fm=0..1}] fireDelay 0
scoreboard players set @s[scores={fireDelay=5..,grau.fm=2}] fireDelay 0
execute if score @s grau.ammo matches ..0 at @s run playsound mgdr:common.empty player @s
