item modify entity @s[predicate=mgdr:is_sneaking,scores={aimSec=2..},tag=!haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/holo/asval_aiming
item modify entity @s[predicate=mgdr:is_sprinting,tag=!haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/holo/asval_run
item modify entity @s[predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=!haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/holo/asval

item modify entity @s[predicate=mgdr:is_sneaking,scores={aimSec=2..},tag=haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/holo/grip/asval_aiming
item modify entity @s[predicate=mgdr:is_sprinting,tag=haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/holo/grip/asval_run
item modify entity @s[predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/holo/grip/asval

item modify entity @s[predicate=mgdr:is_sneaking,scores={aimSec=2..},tag=!haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/holo/ext/asval_aiming
item modify entity @s[predicate=mgdr:is_sprinting,tag=!haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/holo/ext/asval_run
item modify entity @s[predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=!haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/holo/ext/asval

item modify entity @s[predicate=mgdr:is_sneaking,scores={aimSec=2..},tag=haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/holo/grip_ext/asval_aiming
item modify entity @s[predicate=mgdr:is_sprinting,tag=haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/holo/grip_ext/asval_run
item modify entity @s[predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/holo/grip_ext/asval
