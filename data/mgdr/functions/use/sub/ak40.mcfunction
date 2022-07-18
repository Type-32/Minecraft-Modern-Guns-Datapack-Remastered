#execute if entity @s[scores={ak.ammo=1..,fireDelay=6..}] run tag @s add firingGun

execute if entity @s[scores={fireDelay=3..}] unless score @s ak.ammo matches ..0 run function mgdr:action/ak_act
execute if entity @s[scores={fireDelay=3..}] if score @s ak.ammo matches ..0 run playsound mgdr:others.empty player @s
