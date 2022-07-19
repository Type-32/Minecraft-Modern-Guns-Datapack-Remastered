item modify entity @s[scores={mgdr.weaponUID=9}] weapon.mainhand mgdr:grau556/grau556_aiming_fire

item modify entity @s[scores={mgdr.weaponUID=4},tag=!haveRedDot,tag=!haveHolo,tag=!haveGrip,tag=!haveSupressor] weapon.mainhand mgdr:cbr27/cbr27_aiming_fire
execute if entity @s[scores={mgdr.weaponUID=4},tag=haveRedDot,tag=!haveHolo] run function mgdr:action/effects/ads/cbr27/red_dot
execute if entity @s[scores={mgdr.weaponUID=4},tag=!haveRedDot,tag=haveHolo] run function mgdr:action/effects/ads/cbr27/holo
execute if entity @s[scores={mgdr.weaponUID=4},tag=!haveRedDot,tag=!haveHolo] run function mgdr:action/effects/ads/cbr27/atch

item modify entity @s[scores={mgdr.weaponUID=5}] weapon.mainhand mgdr:cbr27a1/cbr27a1_aiming_fire

item modify entity @s[scores={mgdr.weaponUID=1}] weapon.mainhand mgdr:ak/ak_aiming_fire

item modify entity @s[scores={mgdr.weaponUID=2},tag=!haveRedDot,tag=!haveHolo,tag=!haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/asval_aiming_fire
execute if entity @s[scores={mgdr.weaponUID=2},tag=haveRedDot,tag=!haveHolo] run function mgdr:action/effects/ads/asval/red_dot
execute if entity @s[scores={mgdr.weaponUID=2},tag=!haveRedDot,tag=haveHolo] run function mgdr:action/effects/ads/asval/holo
execute if entity @s[scores={mgdr.weaponUID=2},tag=!haveRedDot,tag=!haveHolo] run function mgdr:action/effects/ads/asval/atch

item modify entity @s[scores={mgdr.weaponUID=17}] weapon.mainhand mgdr:sig716/sig716_aiming_fire

item modify entity @s[scores={mgdr.weaponUID=15}] weapon.mainhand mgdr:mp7/mp7_aiming_fire

item modify entity @s[scores={mgdr.weaponUID=13}] weapon.mainhand mgdr:mp5/mp5_aiming_fire

item modify entity @s[scores={mgdr.weaponUID=14}] weapon.mainhand mgdr:mp5t/mp5t_aiming_fire

item modify entity @s[scores={mgdr.weaponUID=8}] weapon.mainhand mgdr:cz117/cz117_aiming_fire

item modify entity @s[scores={mgdr.weaponUID=7}] weapon.mainhand mgdr:cbt97/cbt97_aiming_fire

item modify entity @s[scores={mgdr.weaponUID=10}] weapon.mainhand mgdr:m14/m14_aiming_fire

item modify entity @s[scores={mgdr.weaponUID=12}] weapon.mainhand mgdr:m1911/m1911_aiming_fire

item modify entity @s[scores={mgdr.weaponUID=11}] weapon.mainhand mgdr:m17/m17_aiming_fire

item modify entity @s[scores={mgdr.weaponUID=6}] weapon.mainhand mgdr:cbs5/cbs5_aiming_fire

item modify entity @s[scores={mgdr.weaponUID=18}] weapon.mainhand mgdr:vec9/vec9_aiming_fire

item modify entity @s[scores={mgdr.weaponUID=3}] weapon.mainhand mgdr:augpara/augpara_aiming_fire
