#execute if entity @s[scores={ak.ammo=1..,fireDelay=6..}] at @s run tag @s add firingGun

execute if entity @s[scores={fireDelay=3..}] unless score @s ak.ammo matches ..0 at @s run function mgdr:action/ak_act
execute if entity @s[scores={fireDelay=3..}] if score @s ak.ammo matches ..0 at @s run playsound mgdr:others.empty player @s
