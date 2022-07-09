execute if entity @s[scores={fireDelay=4..,usedCarrotPol=1..,vec9.fm=1}] run function mgdr:use/sub/vec9
execute if entity @s[scores={usedCarrotPol=1..,vec9.fm=0}] run function mgdr:use/sub/vec9
execute if entity @s[scores={fireDelay=1,vec9.fm=1}] unless score @s vec9.ammo matches ..0 run function mgdr:action/vec9_act
execute if entity @s[scores={fireDelay=2,vec9.fm=1}] unless score @s vec9.ammo matches ..0 run function mgdr:action/vec9_act
execute if entity @s[scores={fireDelay=3,vec9.fm=1}] unless score @s vec9.ammo matches ..0 run function mgdr:action/vec9_act
