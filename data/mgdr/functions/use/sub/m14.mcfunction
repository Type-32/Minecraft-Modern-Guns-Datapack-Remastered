execute as @s[tag=!Hardline,scores={fireDelay=8..,m14.ammo=1..}] at @s run function mgdr:action/m14_act
execute as @s[tag=!Hardline,scores={m14.ammo=..0}] at @s run playsound mgdr:others.empty player @s

execute as @s[tag=Hardline,scores={fireDelay=7..,m14_hdl.ammo=1..}] at @s run function mgdr:action/m14_act
execute as @s[tag=Hardline,scores={m14_hdl.ammo=..0}] at @s run playsound mgdr:others.empty player @s
