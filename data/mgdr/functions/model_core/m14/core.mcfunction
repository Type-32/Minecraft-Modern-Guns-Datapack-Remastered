execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..},tag=!Hardline] weapon.mainhand mgdr:m14/m14_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s[tag=!Hardline] weapon.mainhand mgdr:m14/m14_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s[tag=!Hardline] weapon.mainhand mgdr:m14/m14
