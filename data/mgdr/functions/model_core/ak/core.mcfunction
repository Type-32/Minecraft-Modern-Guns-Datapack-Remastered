execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..},tag=!equippedGripRMR_Kit] weapon.mainhand mgdr:ak/ak_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s[tag=!equippedGripRMR_Kit] weapon.mainhand mgdr:ak/ak_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s[tag=!equippedGripRMR_Kit] weapon.mainhand mgdr:ak/ak

execute if entity @s[tag=equippedGripRMR_Kit] run function mgdr:model_core/ak/kit/rmr_gripped
