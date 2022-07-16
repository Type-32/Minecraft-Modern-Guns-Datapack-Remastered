scoreboard players set @s playerLeftGame 0
tag @s add forfeitedMatch
team leave @s
clear @s
tp @s @e[tag=ArcadeAsset,tag=LobbyPoint,type=armor_stand,limit=1]
execute at @e[tag=ArcadeAsset,tag=LobbyPoint,type=armor_stand,limit=1] run spawnpoint @s ~ ~ ~
tellraw @s ["",{"text": "You have forfeited your current match! You will not be able to join until the next match.","color": "dark_red","bold": true}]
tellraw @a ["",{"selector":"@s","color": "dark_red","bold": true},{"text": " has forfeited the match!","color": "dark_red","bold": true}]
