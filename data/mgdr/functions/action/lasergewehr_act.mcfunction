function mgdr:action/effects/ads_eff
scoreboard players set .dist shoot_dist 0
function mgdr:muzzle_flash_light_add

execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 0
execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 1
execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 2
execute if predicate mgdr:half_chance run scoreboard players set @s fireDisplace 3



tag @s add firing
tag @s add firingMarkerDetect
execute anchored eyes positioned ^-0.4 ^-0.2 ^ run function mgdr:rays/lasergewehr
scoreboard players operation /player.lastFiredUID gamerule = @s mgdr.pid
tag @s remove firing
tag @s remove firingMarkerDetect


#execute as @s[predicate=!mgdr:is_sneaking] anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ air run particle campfire_cosy_smoke ^-.3 ^-.15 ^1.1 0 3 0 .07 0 force @s[scores={tgl_particle=0}]
#execute as @s[predicate=!mgdr:is_sneaking] anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ water run particle bubble ^ ^-.15 ^1.1 0 0 0 .03 2 force @s[scores={tgl_particle=0}]
execute as @s[predicate=!mgdr:is_sneaking] anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ air run particle flame ^-.3 ^-.15 ^0.7 0 0 0 .02 1 force @s[scores={tgl_particle=0}]
playsound block.note_block.banjo voice @a[distance=..30] ~ ~ ~ 1000
execute if score noRecoil gamerule matches ..0 run tp @s ~ ~ ~ ~ ~-0.8
scoreboard players set @s[scores={fireDelay=4..}] fireDelay 0
#scoreboard players set @s[scores={fireDelay=3..}] fireDelay 0
execute if score infiniteAmmo gamerule matches ..0 run scoreboard players remove @s[gamemode=!creative] laser.ammo 1
#execute if score @s laser.ammo matches ..0 at @s run playsound mgdr:others.empty player @s
