item modify entity @s[predicate=mgdr:is_sneaking,scores={aimSec=2..},tag=!haveRedDot,tag=!haveHolo,tag=!haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/asval_aiming
item modify entity @s[predicate=mgdr:is_sprinting,tag=!haveRedDot,tag=!haveHolo,tag=!haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/asval_run
item modify entity @s[predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=!haveRedDot,tag=!haveHolo,tag=!haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/asval

execute if entity @s[tag=haveRedDot,tag=!haveHolo] run function mgdr:model_core/asval/variant/rd_core
execute if entity @s[tag=!haveRedDot,tag=haveHolo] run function mgdr:model_core/asval/variant/holo_core
execute if entity @s[tag=!haveRedDot,tag=!haveHolo] run function mgdr:model_core/asval/variant/atch_core
