execute unless score @s vsg6t.ammo matches ..0 at @s if entity @s[scores={fireDelay=3..,vsg6t.fm=0..1}] run function mgdr:action/vsg6t_act
execute unless score @s vsg6t.ammo matches ..0 at @s if entity @s[scores={fireDelay=5..,vsg6t.fm=2}] run function mgdr:action/vsg6t_act
execute if score @s vsg6t.ammo matches ..0 at @s run playsound mgdr:others.empty player @s
