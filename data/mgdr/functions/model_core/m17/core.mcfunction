execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..}] weapon.mainhand mgdr:m17/m17_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s weapon.mainhand mgdr:m17/m17_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s weapon.mainhand mgdr:m17/m17
