item modify entity @s[predicate=mgdr:is_sneaking,scores={aimSec=2..}] weapon.offhand mgdr:model_enf_hand
item modify entity @s[predicate=mgdr:is_sprinting] weapon.offhand mgdr:mp7/hand/run
item modify entity @s[predicate=!mgdr:is_sprinting,predicate=!mgdr:is_sneaking] weapon.offhand mgdr:mp7/hand/main
