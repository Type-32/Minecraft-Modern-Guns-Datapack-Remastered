execute if entity @s[tag=!haveOptic,tag=!haveSnipeOptic] run effect give @s slowness 1 0 true
execute if entity @s[tag=haveOptic] run effect give @s slowness 1 3 true
execute if entity @s[tag=haveSnipeOptic] run attribute @s generic.movement_speed base set -0.1
tag @s remove aimCheck
