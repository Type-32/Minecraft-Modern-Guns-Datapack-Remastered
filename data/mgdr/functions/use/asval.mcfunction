execute if entity @s[scores={fireDelay=3..,cbr27.fm=0..1}] unless score @s asval.ammo matches ..0 at @s run function mgdr:action/asval_act
execute if entity @s[scores={fireDelay=5..,cbr27.fm=2}] unless score @s asval.ammo matches ..0 at @s run function mgdr:action/asval_act
execute if score @s asval.ammo matches ..0 at @s run playsound mgdr:common.empty player @s
