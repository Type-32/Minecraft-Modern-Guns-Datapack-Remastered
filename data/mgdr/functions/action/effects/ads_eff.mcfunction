scoreboard players set @s aimSec 1
execute as @s[predicate=mgdr:is_sneaking,scores={aimSec=..1,aiming_fire=0}] run function mgdr:action/effects/aim_down_sights
