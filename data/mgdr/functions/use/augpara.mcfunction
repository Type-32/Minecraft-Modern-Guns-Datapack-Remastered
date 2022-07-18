execute if entity @s[scores={usedCarrotPol=1..}] run function mgdr:use/sub/augpara
execute if entity @s[scores={fireDelay=1,augpara.fm=1}] unless score @s augpara.ammo matches ..0 run function mgdr:action/augpara_act
execute if entity @s[scores={fireDelay=2,augpara.fm=0..1}] unless score @s augpara.ammo matches ..0 run function mgdr:action/augpara_act
