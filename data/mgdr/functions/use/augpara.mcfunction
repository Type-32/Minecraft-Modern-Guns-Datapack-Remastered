execute unless score @s augpara.ammo matches ..0 at @s if entity @s[scores={fireDelay=3..,augpara.fm=0}] run function mgdr:action/augpara_act
execute unless score @s augpara.ammo matches ..0 at @s if entity @s[scores={fireDelay=5..,augpara.fm=1}] run function mgdr:action/augpara_act
execute if score @s augpara.ammo matches ..0 at @s run playsound mgdr:common.empty player @s
