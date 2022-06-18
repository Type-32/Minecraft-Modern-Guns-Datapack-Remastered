function mgdr:action/effects/ads_eff
scoreboard players set .dist shoot_dist 0
execute at @s run function mgdr:muzzle_flash_light_add

#function mgdr:action/eject_bullet_shell
tag @s add firing
tag @s add firingMarkerDetect
execute anchored eyes run function mgdr:rays/ak
tag @s remove firing
tag @s remove firingMarkerDetect

execute as @s[predicate=!mgdr:is_sneaking,tag=!Resonance] anchored eyes positioned ^ ^ ^1 run particle dust 1 1 1 3 ^-.3 ^-.15 ^1.1 0 3 0 .15 0 force @s[scores={tgl_particle=0}]
execute anchored eyes positioned ^ ^ ^1 run particle flame ^ ^-.15 ^1 0 0 0 .02 1 force @s[scores={tgl_particle=0}]
#execute as @s[predicate=!mgdr:is_sneaking,tag=!Resonance] anchored eyes positioned ^ ^ ^1 run particle flame ^-.3 ^-.15 ^1 0 0 0 .02 1 force @s[scores={tgl_particle=0}]


execute run playsound mgdr:ak.fire voice @a[distance=..45] ~ ~ ~ 10

execute if score noRecoil gamerule matches ..0 run tp @s[tag=!haveGrip] ~ ~ ~ ~ ~-2.8
execute if score noRecoil gamerule matches ..0 run tp @s[tag=haveGrip] ~ ~ ~ ~ ~-2

execute if score infiniteAmmo gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative] ak.ammo 1
#tag @s[scores={fireDelay=6..}] remove firingGun
scoreboard players set @s[scores={fireDelay=3..}] fireDelay 0
execute if score @s ak.ammo matches ..0 at @s run playsound mgdr:common.empty player @s
