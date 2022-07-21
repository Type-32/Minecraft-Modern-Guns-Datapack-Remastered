execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..},tag=!haveRedDot,tag=!haveHolo,tag=!haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/asval_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s[tag=!haveRedDot,tag=!haveHolo,tag=!haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/asval_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s[tag=!haveRedDot,tag=!haveHolo,tag=!haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/asval

execute if entity @s[tag=haveRedDot,tag=!haveHolo] run function mgdr:model_core/asval/variant/rd_core
execute if entity @s[tag=!haveRedDot,tag=haveHolo] run function mgdr:model_core/asval/variant/holo_core
execute if entity @s[tag=!haveRedDot,tag=!haveHolo] run function mgdr:model_core/asval/variant/atch_core
