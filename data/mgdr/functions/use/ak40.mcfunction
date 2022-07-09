execute if entity @s[scores={usedCarrotPol=1..}] run function mgdr:use/sub/ak40
execute if entity @s[scores={fireDelay=2,ak.fm=1}] unless score @s ak.ammo matches ..0 run function mgdr:action/ak_act
