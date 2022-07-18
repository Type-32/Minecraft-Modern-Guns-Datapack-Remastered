execute if entity @s[scores={fireDelay=3..,grau.fm=0..1}] unless score @s grau.ammo matches ..0 run function mgdr:action/grau556_act
execute if entity @s[scores={fireDelay=5..,grau.fm=2}] unless score @s grau.ammo matches ..0 run function mgdr:action/grau556_act
execute if score @s grau.ammo matches ..0 run playsound mgdr:others.empty player @s
