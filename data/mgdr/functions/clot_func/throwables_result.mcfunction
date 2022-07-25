execute as @e[tag=grenade] at @s run function mgdr:action/effects/grenade_explode
#execute as @e[tag=plane_bomb,predicate=mgdr:on_ground] at @s run function mgdr:action/effects/grenade_explode
execute as @e[tag=flashbang] at @s run function mgdr:action/effects/flashbang_explode
#execute as @e[tag=bullet_shell,predicate=mgdr:on_ground] at @s run kill @s
