execute if entity @s[scores={usedCarrotPol=1..}] run function mgdr:use/sub/grau556
execute if entity @s[scores={fireDelay=1,grau.fm=2}] unless score @s grau.ammo matches ..0 run function mgdr:action/grau556_act
execute if entity @s[scores={fireDelay=2,grau.fm=1..2}] unless score @s grau.ammo matches ..0 run function mgdr:action/grau556_act
