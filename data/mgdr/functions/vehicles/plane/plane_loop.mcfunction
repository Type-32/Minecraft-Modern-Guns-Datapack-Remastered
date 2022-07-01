execute if entity @s[tag=planeInit] run function mgdr:vehicles/plane/plane_init
execute if entity @p[distance=...5] run tag @s[tag=!hasPlayer] add hasPlayer
execute unless entity @p[distance=...5] run tag @s[tag=hasPlayer] remove hasPlayer
execute rotated as @p[distance=...5] if block ^ ^ ^1 #mgdr:plane_flyable run function mgdr:vehicles/plane/plane_direction_root
