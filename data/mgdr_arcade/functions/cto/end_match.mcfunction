scoreboard players set .matchStarted arcadeRule 0
tag @a remove DeadPlayer
scoreboard players set @a deathTimer 0
scoreboard players set @a arcade.plr_deaths 0
team leave @a
clear @a
execute unless score .alliegiancePoints arcadeRule matches 100.. if score .coalitionPoints arcadeRule matches 100.. run tellraw @a ["",{"text": "Team ","color": "green"},{"text": "Coalition ","color": "blue"},{"text": "has won the match!","color": "green"}]
execute if score .alliegiancePoints arcadeRule matches 100.. unless score .coalitionPoints arcadeRule matches 100.. run tellraw @a ["",{"text": "Team ","color": "green"},{"text": "Alliegiance ","color": "red"},{"text": "has won the match!","color": "green"}]
execute if score .alliegiancePoints arcadeRule > .coalitionPoints arcadeRule unless score .alliegiancePoints arcadeRule matches 100.. unless score .coalitionPoints arcadeRule matches 100.. run tellraw @a ["",{"text": "Team ","color": "green"},{"text": "Alliegiance ","color": "red"},{"text": "has won the match!","color": "green"}]
execute if score .alliegiancePoints arcadeRule < .coalitionPoints arcadeRule unless score .alliegiancePoints arcadeRule matches 100.. unless score .coalitionPoints arcadeRule matches 100.. run tellraw @a ["",{"text": "Team ","color": "green"},{"text": "Coalition ","color": "blue"},{"text": "has won the match!","color": "green"}]
execute if score .alliegiancePoints arcadeRule = .coalitionPoints arcadeRule unless score .alliegiancePoints arcadeRule matches 100.. unless score .coalitionPoints arcadeRule matches 100.. run tellraw @a ["",{"text": "It's a Draw!","color": "green"}]
execute if score .alliegiancePlayers arcadeRule matches 0 run tellraw @a ["",{"text": "Team ","color": "green"},{"text": "Alliegiance ","color": "red"},{"text": "has forfeited the match!","color": "green"}]
execute if score .coalitionPlayers arcadeRule matches 0 run tellraw @a ["",{"text": "Team ","color": "green"},{"text": "Coalition ","color": "blue"},{"text": "has forfeited the match!","color": "green"}]
execute if score .coalitionPlayers arcadeRule matches 1.. if score .alliegiancePlayers arcadeRule matches 1.. run tellraw @a ["",{"text": "Match Ended! Match Scores: ","color": "green"},{"score":{"name": ".alliegiancePoints","objective": "arcadeRule"},"color": "red","bold": true},{"text": "-","color": "green"},{"score":{"name": ".coalitionPoints","objective": "arcadeRule"},"color": "blue","bold": true}]
tp @a[tag=!forfeitedMatch] @e[type=armor_stand,tag=ArcadeAsset,tag=LobbyPoint,limit=1]
effect clear @a
effect give @a regeneration 1 1 true
effect give @a saturation 1 255 true
bossbar set mgdr_arcade:alliegiance_points visible false
bossbar set mgdr_arcade:coalition_points visible false
bossbar set mgdr_arcade:match_time visible false
scoreboard players set .coalitionPoints arcadeRule 0
scoreboard players set .alliegiancePoints arcadeRule 0
execute at @e[type=armor_stand,tag=ArcadeAsset,tag=LobbyPoint,limit=1] run spawnpoint @a
scoreboard players set .matchTime arcadeRule 0
tag @a remove voluntary
tag @a remove forfeitedMatch
scoreboard players set @e[tag=ObjectivePoint,type=armor_stand] objectiveCaptureDelay 0