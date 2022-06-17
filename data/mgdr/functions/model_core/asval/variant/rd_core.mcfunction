item modify entity @s[predicate=mgdr:is_sneaking,scores={aimSec=2..},tag=!haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/rd/asval_aiming
item modify entity @s[predicate=mgdr:is_sprinting,tag=!haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/rd/asval_run
item modify entity @s[predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=!haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/rd/asval

item modify entity @s[predicate=mgdr:is_sneaking,scores={aimSec=2..},tag=haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/rd/grip/asval_aiming
item modify entity @s[predicate=mgdr:is_sprinting,tag=haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/rd/grip/asval_run
item modify entity @s[predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=haveGrip,tag=!haveExtMag] weapon.mainhand mgdr:asval/variant/rd/grip/asval

item modify entity @s[predicate=mgdr:is_sneaking,scores={aimSec=2..},tag=!haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/rd/ext/asval_aiming
item modify entity @s[predicate=mgdr:is_sprinting,tag=!haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/rd/ext/asval_run
item modify entity @s[predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=!haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/rd/ext/asval

item modify entity @s[predicate=mgdr:is_sneaking,scores={aimSec=2..},tag=haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/rd/grip_ext/asval_aiming
item modify entity @s[predicate=mgdr:is_sprinting,tag=haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/rd/grip_ext/asval_run
item modify entity @s[predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=haveGrip,tag=haveExtMag] weapon.mainhand mgdr:asval/variant/rd/grip_ext/asval
