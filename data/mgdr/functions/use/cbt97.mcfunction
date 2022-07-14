execute if entity @s[scores={usedCarrotPol=1..}] at @s run function mgdr:use/sub/cbt97
execute if entity @s[scores={fireDelay=2,cbt97.fm=1}] unless score @s cbt97.ammo matches ..0 at @s run function mgdr:action/cbt97_act
