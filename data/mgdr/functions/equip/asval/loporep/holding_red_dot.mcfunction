execute if entity @s[tag=!haveGrip,tag=!haveExtMag,tag=!haveRedDot,tag=!haveHolo] run function mgdr:equip/asval/func/atch_red_dot
execute if entity @s[tag=haveGrip,tag=!haveExtMag,tag=!haveRedDot,tag=!haveHolo] run function mgdr:equip/asval/func/atch_red_dot_grip
execute if entity @s[tag=!haveGrip,tag=haveExtMag,tag=!haveRedDot,tag=!haveHolo] run function mgdr:equip/asval/func/atch_red_dot_ext
execute if entity @s[tag=haveGrip,tag=haveExtMag,tag=!haveRedDot,tag=!haveHolo] run function mgdr:equip/asval/func/atch_red_dot_grip_ext
