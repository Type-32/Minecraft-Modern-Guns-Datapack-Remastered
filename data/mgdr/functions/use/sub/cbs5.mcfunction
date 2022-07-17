execute as @s[scores={fireDelay=40..,cbs5.ammo=1..,cbs5.load=0},tag=!gunDisabled] at @s run function mgdr:action/cbs5_act
execute as @s[scores={cbs5.ammo=..0},tag=!gunDisabled] at @s run playsound mgdr:others.empty player @s

execute as @s[scores={fireDelay=5..,cbs5.ammo=1..,cbs5.load=1..}] run function mgdr:use/bolt_action/cbs5
