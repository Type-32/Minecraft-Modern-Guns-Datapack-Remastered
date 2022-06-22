execute if entity @s[tag=!Kilowatt,scores={fireDelay=3..,grau.fm=0..1}] unless score @s grau.ammo matches ..0 at @s run function mgdr:action/grau556_act
execute if entity @s[tag=!Kilowatt,scores={fireDelay=5..,grau.fm=2}] unless score @s grau.ammo matches ..0 at @s run function mgdr:action/grau556_act
execute if entity @s[tag=!Kilowatt] if score @s grau.ammo matches ..0 at @s run playsound mgdr:common.empty player @s

execute if entity @s[tag=Kilowatt,scores={fireDelay=3..,grau.fm=0..1}] unless score @s grau_kilo.ammo matches ..0 at @s run function mgdr:action/grau556_act
execute if entity @s[tag=Kilowatt,scores={fireDelay=5..,grau.fm=2}] unless score @s grau_kilo.ammo matches ..0 at @s run function mgdr:action/grau556_act
execute if entity @s[tag=Kilowatt] if score @s grau_kilo.ammo matches ..0 at @s run playsound mgdr:common.empty player @s
