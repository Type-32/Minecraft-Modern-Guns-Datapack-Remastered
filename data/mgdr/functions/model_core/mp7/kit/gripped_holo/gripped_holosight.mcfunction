execute if predicate mgdr:is_sneaking run item modify entity @s weapon.mainhand mgdr:mp7/kits/gripped_holo/mp7_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s weapon.mainhand mgdr:mp7/kits/gripped_holo/mp7_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s weapon.mainhand mgdr:mp7/kits/gripped_holo/mp7
