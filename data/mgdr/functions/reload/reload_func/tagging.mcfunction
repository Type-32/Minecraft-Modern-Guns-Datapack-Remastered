execute as @e[type=item,tag=!processed,nbt={Item:{tag:{Tags:["mgdrGun"]}}}] at @s run function mgdr:reload/action/process_item

tag @a[scores={mgdr.weaponUID=10}] remove switch_firemode
tag @a[scores={mgdr.weaponUID=12}] remove switch_firemode
tag @a[scores={mgdr.weaponUID=11}] remove switch_firemode
tag @a[scores={mgdr.weaponUID=6}] remove switch_firemode
tag @a[scores={mgdr.weaponUID=16}] remove switch_firemode
execute as @a[tag=Reloading] run function mgdr:reload/reload_func/reset_reload_delay
#execute as @a[tag=Reloading] if score @s auto_reload matches 1 run function mgdr:reload/reload_func/reset_reload_delay
#tag @a[tag=Reloading] remove Reloading

#execute as @a[x_rotation=90,tag=switch_firemode] run function mgdr:reload/firemode_switch_auto
#execute as @a[x_rotation=90,tag=switch_firemode] run function mgdr:reload/firemode_switch_single
execute as @a[tag=switch_firemode] run function mgdr:reload/firemode_switch_burst
execute as @a[tag=switch_firemode] run function mgdr:reload/firemode_switch_auto
execute as @a[tag=switch_firemode] run function mgdr:reload/firemode_switch_single
