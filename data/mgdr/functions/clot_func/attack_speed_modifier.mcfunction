execute as @a[tag=!holdingGun,tag=!unchecked] run attribute @s generic.attack_speed base set 4
execute as @a[tag=!holdingGun,tag=!unchecked] run attribute @s generic.movement_speed base set 0.1
tag @a[tag=!holdingGun] add unchecked