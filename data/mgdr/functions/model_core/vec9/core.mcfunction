execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..}] weapon.mainhand mgdr:vec9/vec9_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s weapon.mainhand mgdr:vec9/vec9_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s weapon.mainhand mgdr:vec9/vec9
