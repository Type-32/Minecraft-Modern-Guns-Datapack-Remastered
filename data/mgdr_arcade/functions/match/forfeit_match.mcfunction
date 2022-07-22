scoreboard players set @s playerLeftGame 0
execute if score .matchStarted arcadeRule matches 1.. run tag @s add forfeitedMatch
team leave @s
clear @s
tp @s @e[tag=ArcadeAsset,tag=LobbyPoint,type=armor_stand,limit=1]
execute at @e[tag=ArcadeAsset,tag=LobbyPoint,type=armor_stand,limit=1] run spawnpoint @s ~ ~ ~
execute if score .matchStarted arcadeRule matches 1.. run tellraw @s ["",{"text": "You have forfeited your current match! You will not be able to join until the next match.","color": "dark_red","bold": true}]
execute if score .matchStarted arcadeRule matches 1.. run tellraw @a ["",{"selector":"@s","color": "dark_red","bold": true},{"text": " has forfeited the match!","color": "dark_red","bold": true}]
