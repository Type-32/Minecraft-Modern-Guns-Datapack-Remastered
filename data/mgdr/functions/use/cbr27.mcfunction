execute if entity @s[scores={usedCarrotPol=1..}] run function mgdr:use/sub/cbr27
execute if entity @s[scores={fireDelay=1,cbr27.fm=2}] unless score @s cbr27.ammo matches ..0 run function mgdr:action/cbr27_act
execute if entity @s[scores={fireDelay=2,cbr27.fm=1..2}] unless score @s cbr27.ammo matches ..0 run function mgdr:action/cbr27_act
