execute if entity @s[tag=planeInit] run function mgdr:vehicles/plane_init
execute if entity @p[distance=...5] run tag @s[tag=!hasPlayer] add hasPlayer
execute unless entity @p[distance=...5] run tag @s[tag=hasPlayer] remove hasPlayer
execute rotated as @p[distance=...5] run tp @s ^ ^ ^1
execute as @e[distance=..2.5,limit=1,sort=nearest,tag=planeModel] at @s run function mgdr:vehicles/as_plane_model
