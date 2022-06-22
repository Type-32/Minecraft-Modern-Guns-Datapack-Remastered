execute if entity @s[scores={usedCarrotPol=1..}] run function mgdr:use/sub/asval
execute if entity @s[scores={fireDelay=1,asval.fm=2}] unless score @s asval.ammo matches ..0 run function mgdr:action/asval_act
execute if entity @s[scores={fireDelay=2,asval.fm=1..2}] unless score @s asval.ammo matches ..0 run function mgdr:action/asval_act
