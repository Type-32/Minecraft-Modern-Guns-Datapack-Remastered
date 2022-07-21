execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..}] weapon.mainhand mgdr:cbs5/cbs5_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s weapon.mainhand mgdr:cbs5/cbs5_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s weapon.mainhand mgdr:cbs5/cbs5
