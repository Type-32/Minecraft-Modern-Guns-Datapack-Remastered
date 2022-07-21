execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..}] weapon.offhand mgdr:model_enf_hand
execute if predicate mgdr:is_sprinting run item modify entity @s weapon.offhand mgdr:type2a/hand/run
item modify entity @s[predicate=!mgdr:is_sprinting,predicate=!mgdr:is_sneaking] weapon.offhand mgdr:type2a/hand/main
