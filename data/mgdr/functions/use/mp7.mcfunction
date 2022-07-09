execute if entity @s[scores={usedCarrotPol=1..}] run function mgdr:use/sub/mp7
execute if entity @s[scores={fireDelay=2,mp7.fm=1}] unless score @s mp7.ammo matches ..0 run function mgdr:action/mp7_act
