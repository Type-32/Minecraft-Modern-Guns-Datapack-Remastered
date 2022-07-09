execute if entity @s[scores={usedCarrotPol=1..}] run function mgdr:use/sub/sig716
execute if entity @s[scores={fireDelay=1,sig716.fm=2}] unless score @s sig716.ammo matches ..0 run function mgdr:action/sig716_act
execute if entity @s[scores={fireDelay=2,sig716.fm=1..2}] unless score @s sig716.ammo matches ..0 run function mgdr:action/sig716_act
