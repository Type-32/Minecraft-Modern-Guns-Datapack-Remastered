execute if entity @s[scores={usedCarrotPol=1..}] run function mgdr:use/sub/mp5
execute if entity @s[scores={fireDelay=2,mp5.fm=1}] unless score @s mp5.ammo matches ..0 run function mgdr:action/mp5_act
