execute if block ~ ~1 ~ air run setblock ~ ~1 ~ light
execute if block ~ ~1 ~ water run setblock ~ ~1 ~ light[waterlogged=true]
scoreboard players set @s flashDelay 0