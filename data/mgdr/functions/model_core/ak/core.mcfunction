item modify entity @s[predicate=mgdr:is_sneaking,scores={aimSec=2..},tag=!equippedGripRMR_Kit] weapon.mainhand mgdr:ak/ak_aiming
item modify entity @s[predicate=mgdr:is_sprinting,tag=!equippedGripRMR_Kit] weapon.mainhand mgdr:ak/ak_run
item modify entity @s[predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=!equippedGripRMR_Kit] weapon.mainhand mgdr:ak/ak

execute if entity @s[tag=equippedGripRMR_Kit] run function mgdr:model_core/ak/kit/rmr_gripped
