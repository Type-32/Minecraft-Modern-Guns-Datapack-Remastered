execute if block ~ ~1 ~ light unless block ~ ~1 ~ water run setblock ~ ~1 ~ air
execute if block ~1 ~1 ~ light unless block ~1 ~1 ~ water run setblock ~1 ~1 ~ air
execute if block ~ ~1 ~1 light unless block ~ ~1 ~1 water run setblock ~ ~1 ~1 air
execute if block ~-1 ~1 ~ light unless block ~-1 ~1 ~ water run setblock ~-1 ~1 ~ air
execute if block ~ ~1 ~-1 light unless block ~ ~1 ~-1 water run setblock ~ ~1 ~-1 air
execute if block ~1 ~1 ~-1 light unless block ~1 ~1 ~-1 water run setblock ~1 ~1 ~-1 air
execute if block ~-1 ~1 ~1 light unless block ~-1 ~1 ~1 water run setblock ~-1 ~1 ~1 air
execute if block ~1 ~1 ~1 light unless block ~1 ~1 ~1 water run setblock ~1 ~1 ~1 air
execute if block ~-1 ~1 ~-1 light unless block ~-1 ~1 ~-1 water run setblock ~-1 ~1 ~-1 air

execute if block ~ ~2 ~ light unless block ~ ~2 ~ water run setblock ~ ~1 ~ air
execute if block ~1 ~2 ~ light unless block ~1 ~2 ~ water run setblock ~1 ~1 ~ air
execute if block ~-1 ~2 ~ light unless block ~-1 ~2 ~ water run setblock ~-1 ~1 ~ air
execute if block ~ ~2 ~1 light unless block ~ ~2 ~1 water run setblock ~ ~1 ~1 air
execute if block ~ ~2 ~-1 light unless block ~ ~2 ~-1 water run setblock ~ ~1 ~-1 air
execute if block ~1 ~2 ~-1 light unless block ~1 ~2 ~-1 water run setblock ~1 ~1 ~-1 air
execute if block ~-1 ~2 ~1 light unless block ~-1 ~2 ~1 water run setblock ~-1 ~1 ~1 air
execute if block ~1 ~2 ~1 light unless block ~1 ~2 ~1 water run setblock ~1 ~1 ~1 air
execute if block ~-1 ~2 ~-1 light unless block ~-1 ~2 ~-1 water run setblock ~-1 ~1 ~-1 air

execute if block ~1 ~ ~ light unless block ~1 ~ ~ water run setblock ~1 ~ ~ air
execute if block ~-1 ~ ~ light unless block ~-1 ~ ~ water run setblock ~-1 ~ ~ air
execute if block ~ ~ ~1 light unless block ~ ~ ~ water run setblock ~ ~ ~1 air
execute if block ~ ~ ~-1 light unless block ~ ~ ~-1 water run setblock ~ ~ ~-1 air
execute if block ~1 ~ ~-1 light unless block ~1 ~ ~-1 water run setblock ~1 ~ ~-1 air
execute if block ~-1 ~ ~1 light unless block ~-1 ~ ~1 water run setblock ~-1 ~ ~1 air
execute if block ~1 ~ ~1 light unless block ~1 ~ ~1 water run setblock ~1 ~ ~1 air
execute if block ~-1 ~ ~-1 light unless block ~-1 ~ ~-1 water run setblock ~-1 ~ ~-1 air

fill ~-2 ~-1 ~-2 ~2 ~2 ~2 air replace light[waterlogged=false]
fill ~-2 ~-1 ~-2 ~2 ~2 ~2 water replace light[waterlogged=true]
