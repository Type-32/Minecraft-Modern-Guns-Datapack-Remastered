execute if entity @s[scores={fireDelay=3..,cbr27.fm=0..1}] unless score @s cbr27.ammo matches ..0 run function mgdr:action/cbr27_act
execute if entity @s[scores={fireDelay=5..,cbr27.fm=2}] unless score @s cbr27.ammo matches ..0 run function mgdr:action/cbr27_act
execute if score @s cbr27.ammo matches ..0 run playsound mgdr:others.empty voice @s ~ ~1000 ~ 10000
