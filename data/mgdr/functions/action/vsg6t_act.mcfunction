function mgdr:action/effects/ads_eff
scoreboard players set .dist shoot_dist 0
function mgdr:muzzle_flash_light_add

execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 0
execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 1
execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 2
execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 3



tag @s add firing
tag @s add firingMarkerDetect
execute anchored eyes run function mgdr:rays/vsg6t
scoreboard players operation /player.lastFiredUID gamerule = @s mgdr.pid
tag @s remove firing
tag @s remove firingMarkerDetect


execute as @s[predicate=!mgdr:is_sneaking] anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ air run particle dust 1 1 1 3 ^-.3 ^-.15 ^1.1 0 6 0 0.18 0 force @s[scores={tgl_particle=0}]
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ water run particle bubble ^ ^-.15 ^1.1 0 0 0 .03 2 force @s[scores={tgl_particle=0}]
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ air run particle flame ^ ^-.15 ^1 0 0 0 .02 1 force @s[scores={tgl_particle=0}]
playsound mgdr:vsg6t.fire voice @a[distance=..40] ~ ~ ~ 1000
execute if score noRecoil gamerule matches ..0 run tp @s[tag=!haveGrip] ~ ~ ~ ~ ~-3.5
execute if score noRecoil gamerule matches ..0 run tp @s[tag=haveGrip] ~ ~ ~ ~ ~-2.8
#scoreboard players set @s[scores={fireDelay=4..}] fireDelay 0
scoreboard players set @s[scores={fireDelay=3..,vsg6t.fm=0..1}] fireDelay 0
scoreboard players set @s[scores={fireDelay=5..,vsg6t.fm=2}] fireDelay 0
execute if score infiniteAmmo gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative] vsg6t.ammo 1
execute if score @s vsg6t.ammo matches ..0 at @s run playsound mgdr:others.empty player @s
