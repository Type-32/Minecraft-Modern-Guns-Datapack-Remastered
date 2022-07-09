execute if entity @s[scores={usedCarrotPol=1..}] run function mgdr:use/sub/sig75t
execute if entity @s[scores={fireDelay=1,sig75t.fm=2}] unless score @s sig75t.ammo matches ..0 run function mgdr:action/sig75t_act
execute if entity @s[scores={fireDelay=2,sig75t.fm=1..2}] unless score @s sig75t.ammo matches ..0 run function mgdr:action/sig75t_act
