#Extended Magazine Aligning
#execute as @a[scores={mgdr.weaponUID=1}] if score @s ak.ammo > @s xmx.ammo run scoreboard players operation @s ak.ammo = @s xmx.ammo

#Main
execute as @a[scores={mgdr.weaponUID=4},tag=holdingAttachment] run function mgdr:equip/cbr27/main

execute as @a[scores={mgdr.weaponUID=2},tag=holdingAttachment] run function mgdr:equip/asval/main
