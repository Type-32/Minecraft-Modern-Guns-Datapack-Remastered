execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..},tag=!haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/holo/asval_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s[tag=!haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/holo/asval_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s[tag=!haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/holo/asval

execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..},tag=haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/holo/grip/asval_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s[tag=haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/holo/grip/asval_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s[tag=haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/holo/grip/asval

execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..},tag=!haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/holo/ext/asval_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s[tag=!haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/holo/ext/asval_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s[tag=!haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/holo/ext/asval

execute if predicate mgdr:is_sneaking run item modify entity @s[scores={aimSec=2..},tag=haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/holo/grip_ext/asval_aiming
execute if predicate mgdr:is_sprinting run item modify entity @s[tag=haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/holo/grip_ext/asval_run
execute unless predicate mgdr:is_sneaking unless predicate mgdr:is_sprinting run item modify entity @s[tag=haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/holo/grip_ext/asval
