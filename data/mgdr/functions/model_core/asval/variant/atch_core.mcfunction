item modify entity @s[predicate=mgdr:is_sneaking,scores={aimSec=2..},tag=haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/grip/asval_aiming
item modify entity @s[predicate=mgdr:is_sprinting,tag=haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/grip/asval_run
item modify entity @s[predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/grip/asval

item modify entity @s[predicate=mgdr:is_sneaking,scores={aimSec=2..},tag=!haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/ext/asval_aiming
item modify entity @s[predicate=mgdr:is_sprinting,tag=!haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/ext/asval_run
item modify entity @s[predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=!haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/ext/asval

item modify entity @s[predicate=mgdr:is_sneaking,scores={aimSec=2..},tag=haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/grip_ext/asval_aiming
item modify entity @s[predicate=mgdr:is_sprinting,tag=haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/grip_ext/asval_run
item modify entity @s[predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/grip_ext/asval
