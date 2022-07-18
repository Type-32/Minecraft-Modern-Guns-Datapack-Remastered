execute if entity @s[scores={fireDelay=3..,sig75t.fm=0..1}] unless score @s sig75t.ammo matches ..0 run function mgdr:action/sig75t_act
execute if entity @s[scores={fireDelay=5..,sig75t.fm=2}] unless score @s sig75t.ammo matches ..0 run function mgdr:action/sig75t_act
execute if score @s sig75t.ammo matches ..0 run playsound mgdr:others.empty player @s
