execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..},tag=haveGrip,tag=!haveSupressor] weapon.mainhand mgdr:cbr27/variant/grip/cbr27_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s[tag=haveGrip,tag=!haveSupressor] weapon.mainhand mgdr:cbr27/variant/grip/cbr27_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s[tag=haveGrip,tag=!haveSupressor] weapon.mainhand mgdr:cbr27/variant/grip/cbr27

execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..},tag=!haveGrip,tag=haveSupressor] weapon.mainhand mgdr:cbr27/variant/sup/cbr27_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s[tag=!haveGrip,tag=haveSupressor] weapon.mainhand mgdr:cbr27/variant/sup/cbr27_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s[tag=!haveGrip,tag=haveSupressor] weapon.mainhand mgdr:cbr27/variant/sup/cbr27

execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..},tag=haveGrip,tag=haveSupressor] weapon.mainhand mgdr:cbr27/variant/grip_sup/cbr27_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s[tag=haveGrip,tag=haveSupressor] weapon.mainhand mgdr:cbr27/variant/grip_sup/cbr27_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s[tag=haveGrip,tag=haveSupressor] weapon.mainhand mgdr:cbr27/variant/grip_sup/cbr27
