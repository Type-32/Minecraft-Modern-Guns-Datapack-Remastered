execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..},tag=!equippedGripHolo_Kit] weapon.mainhand mgdr:mp7/mp7_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s[tag=!equippedGripHolo_Kit] weapon.mainhand mgdr:mp7/mp7_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s[tag=!equippedGripHolo_Kit] weapon.mainhand mgdr:mp7/mp7

execute if entity @s[tag=equippedGripHolo_Kit] run function mgdr:model_core/mp7/kit/gripped_holo/gripped_holosight
execute if entity @s[tag=equippedGripHolo_Kit] run function mgdr:model_core/mp7/kit/gripped_holo/gripped_holosight
