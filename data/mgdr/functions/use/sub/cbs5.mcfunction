execute if entity @s[scores={fireDelay=25..,cbs5.ammo=1..,cbs5.load=0},tag=!gunDisabled] run function mgdr:action/cbs5_act
execute if entity @s[scores={cbs5.ammo=..0},tag=!gunDisabled] run playsound mgdr:others.empty player @s

execute if entity @s[scores={fireDelay=5..,cbs5.ammo=1..,cbs5.load=1..}] run function mgdr:use/bolt_action/cbs5
