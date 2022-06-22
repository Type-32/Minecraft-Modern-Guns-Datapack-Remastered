execute if block ~ ~ ~ #mgdr:glass run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ target run tellraw @s ["",{"text":"Hit!"}]
execute if block ~ ~ ~ #mgdr:break_on_bullet_impact run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ tnt run summon tnt ~ ~ ~
execute if block ~ ~ ~ tnt run setblock ~ ~ ~ air
