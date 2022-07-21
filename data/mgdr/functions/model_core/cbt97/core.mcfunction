execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..}] weapon.mainhand mgdr:cbt97/cbt97_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s weapon.mainhand mgdr:cbt97/cbt97_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s weapon.mainhand mgdr:cbt97/cbt97
