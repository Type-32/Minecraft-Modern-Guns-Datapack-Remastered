execute if entity @e[tag=planeSeater,distance=..2.5,sort=nearest,limit=1,tag=hasPlayer] run tp @s @p[distance=..2.5,sort=nearest,limit=1]
execute if entity @e[tag=planeSeater,distance=..2,sort=nearest,limit=1,tag=!hasPlayer] run tp @s @e[tag=planeSeater,distance=..2.5,sort=nearest,limit=1]
particle dust 0.231 0.231 0.231 1.5 ^ ^ ^-0.1 0.2 0.2 0.2 1 4 force @a
particle dust 0 0 0 1 ^ ^ ^-0.1 0.2 0.2 0.2 1 1 force @a
