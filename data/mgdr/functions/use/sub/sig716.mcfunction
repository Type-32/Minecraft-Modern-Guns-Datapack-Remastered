execute if entity @s[scores={fireDelay=3..,sig716.fm=0..1}] unless score @s sig716.ammo matches ..0 run function mgdr:action/sig716_act
execute if entity @s[scores={fireDelay=5..,sig716.fm=2}] unless score @s sig716.ammo matches ..0 run function mgdr:action/sig716_act
execute if score @s sig716.ammo matches ..0 run playsound mgdr:others.empty player @s
