execute if entity @s[scores={usedCarrotPol=1..}] run function mgdr:use/sub/mp5t
execute if entity @s[scores={fireDelay=2,mp5t.fm=1}] unless score @s mp5t.ammo matches ..0 run function mgdr:action/mp5t_act
