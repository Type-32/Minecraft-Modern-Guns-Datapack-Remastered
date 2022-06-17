item modify entity @s[predicate=mgdr:is_sneaking,scores={aimSec=2..},tag=!haveRedDot,tag=!haveHolo,tag=!haveSupressor,tag=!haveGrip] weapon.mainhand mgdr:cbr27/cbr27_aiming
item modify entity @s[predicate=mgdr:is_sprinting,tag=!haveRedDot,tag=!haveHolo,tag=!haveSupressor,tag=!haveGrip] weapon.mainhand mgdr:cbr27/cbr27_run
item modify entity @s[predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=!haveRedDot,tag=!haveHolo,tag=!haveSupressor,tag=!haveGrip] weapon.mainhand mgdr:cbr27/cbr27

execute if entity @s[tag=haveRedDot,tag=!haveHolo] run function mgdr:model_core/cbr27/variant/rd_core
execute if entity @s[tag=!haveRedDot,tag=haveHolo] run function mgdr:model_core/cbr27/variant/holo_core
execute if entity @s[tag=!haveRedDot,tag=!haveHolo] run function mgdr:model_core/cbr27/variant/atch_core
