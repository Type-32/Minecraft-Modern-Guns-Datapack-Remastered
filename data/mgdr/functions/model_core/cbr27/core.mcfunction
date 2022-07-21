execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..},tag=!haveRedDot,tag=!haveHolo,tag=!haveSupressor,tag=!haveGrip] weapon.mainhand mgdr:cbr27/cbr27_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s[tag=!haveRedDot,tag=!haveHolo,tag=!haveSupressor,tag=!haveGrip] weapon.mainhand mgdr:cbr27/cbr27_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s[tag=!haveRedDot,tag=!haveHolo,tag=!haveSupressor,tag=!haveGrip] weapon.mainhand mgdr:cbr27/cbr27

execute if entity @s[tag=haveRedDot,tag=!haveHolo] run function mgdr:model_core/cbr27/variant/rd_core
execute if entity @s[tag=!haveRedDot,tag=haveHolo] run function mgdr:model_core/cbr27/variant/holo_core
execute if entity @s[tag=!haveRedDot,tag=!haveHolo] run function mgdr:model_core/cbr27/variant/atch_core
