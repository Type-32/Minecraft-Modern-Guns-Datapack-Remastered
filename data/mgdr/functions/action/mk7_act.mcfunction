scoreboard players set @s aimSec 0

scoreboard players set @s usedCarrotPol 0
tag @s add firing
tag @s add firingMarkerDetect
execute anchored eyes run function mgdr:rays/mk7
tag @s remove firing
tag @s remove firingMarkerDetect

execute as @s[predicate=!mgdr:is_sneaking] anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ air run particle dust 1 1 1 3 ^-.3 ^-.15 ^1.1 0 6 0 0.18 0 force @s[scores={tgl_particle=0}]
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ water run particle bubble ^ ^-.15 ^1.1 0 0 0 .03 2 force @s[scores={tgl_particle=0}]
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ air run particle flame ^ ^-.15 ^1 0 0 0 .02 1 force @s[scores={tgl_particle=0}]

execute if score noRecoil gamerule matches ..0 run tp @s ~ ~ ~ ~ ~-2.95

scoreboard players set @s usedCarrotPol 0