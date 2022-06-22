execute if score @s aimSec matches 3.. run function mgdr:action/effects/ads_eff
scoreboard players set .dist shoot_dist 0
function mgdr:muzzle_flash_light_add

#
tag @s add firing
tag @s add firingMarkerDetect
execute anchored eyes run function mgdr:rays/cbr27
tag @s remove firing
tag @s remove firingMarkerDetect
#

execute as @s[predicate=!mgdr:is_sneaking] anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ air run particle dust 1 1 1 3 ^-.3 ^-.15 ^1.1 0 6 0 0.18 0 force @s[scores={tgl_particle=0}]
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ water run particle bubble ^ ^-.15 ^1.1 0 0 0 .03 2 force @s[scores={tgl_particle=0}]
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ air run particle flame ^ ^-.15 ^1 0 0 0 .02 1 force @s[scores={tgl_particle=0}]
playsound mgdr:cbr27.fire block @a[distance=..38,tag=!haveSupressor] ~ ~ ~ 100
playsound mgdr:cbr27.sup_fire block @a[distance=..16,tag=haveSupressor] ~ ~ ~ 10
#playsound mgdr:cbr27.fire.ads block @a[distance=..38,tag=!haveSupressor,predicate=mgdr:is_sneaking] ~ ~ ~ 100
#playsound mgdr:cbr27.sup_fire.ads block @a[distance=..16,tag=haveSupressor,predicate=mgdr:is_sneaking] ~ ~ ~ 10

execute if score noRecoil gamerule matches ..0 run function mgdr:action/recoil/rec_cbr27

execute if score infiniteAmmo gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative] cbr27.ammo 1
scoreboard players set @s[scores={fireDelay=3..,cbr27.fm=0..1}] fireDelay 0
scoreboard players set @s[scores={fireDelay=5..,cbr27.fm=2}] fireDelay 0
