execute if entity @e[distance=2.6..,limit=1,sort=nearest,tag=planeSeater,type=minecart] run kill @s
execute if entity @e[distance=..2.5,limit=1,sort=nearest,tag=planeSeater,tag=hasPlayer] run tp @s @p[distance=...5,limit=1]
execute if entity @e[distance=..2.5,limit=1,sort=nearest,tag=planeSeater,tag=!hasPlayer] run tp @s @e[distance=..2,limit=1,sort=nearest,tag=planeSeater]
function mgdr:vehicles/plane/as_plane_model
