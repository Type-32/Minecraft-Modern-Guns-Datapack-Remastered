execute if entity @s[scores={usedCarrotPol=1..}] run function mgdr:use/sub/cz117
execute if entity @s[scores={fireDelay=2,cz117.fm=1}] unless score @s cz117.ammo matches ..0 run function mgdr:action/cz117_act
