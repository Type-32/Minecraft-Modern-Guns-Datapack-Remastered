execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..}] weapon.mainhand mgdr:m1911/m1911_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s weapon.mainhand mgdr:m1911/m1911_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s weapon.mainhand mgdr:m1911/m1911
