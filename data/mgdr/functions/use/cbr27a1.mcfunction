execute if entity @s[scores={usedCarrotPol=1..}] run function mgdr:use/sub/cbr27a1
execute if entity @s[scores={fireDelay=2,cbr27a1.fm=1}] unless score @s cbr27a1.ammo matches ..0 run function mgdr:action/cbr27a1_act
