function mgdr:action/effects/ads_eff
scoreboard players set .dist shoot_dist 0
execute at @s run function mgdr:muzzle_flash_light_add


tag @s add firing
tag @s add firingMarkerDetect
execute as @s[tag=!Resonance] anchored eyes run function mgdr:rays/cbt97
execute anchored eyes run function mgdr:rays/cbt97_resonance
tag @s remove firing
tag @s remove firingMarkerDetect


execute as @s[predicate=!mgdr:is_sneaking,tag=!Resonance] anchored eyes positioned ^ ^ ^1 run particle campfire_cosy_smoke ^-.3 ^-.15 ^1.1 0 3 0 .07 0 force @s[scores={tgl_particle=0}]
execute as @s[predicate=!mgdr:is_sneaking,tag=!Resonance] anchored eyes positioned ^ ^ ^1 run particle flame ^-.3 ^-.15 ^1 0 0 0 .02 1 force @s[scores={tgl_particle=0}]

execute as @s[tag=!Resonance] run playsound mgdr:cbt97.fire voice @a[distance=..50] ~ ~ ~ 10
execute run playsound mgdr:cbt97.resonance.fire voice @a[distance=..14] ~ ~ ~ 10

execute if score noRecoil gamerule matches ..0 run tp @s[tag=!Resonance] ~ ~ ~ ~ ~-3.5
execute if score noRecoil gamerule matches ..0 run tp @s[tag=Resonance] ~ ~ ~ ~ ~-3.2

execute if score infiniteAmmo gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative,tag=!Resonance] cbt97.ammo 1
execute if score infiniteAmmo gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative,tag=Resonance] cbt97_reson.ammo 1
scoreboard players set @s[scores={fireDelay=3..}] fireDelay 0
execute if score @s cbt97.ammo matches ..0 at @s run playsound mgdr:common.empty player @s
