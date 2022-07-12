scoreboard players set .matchStarted arcadeRule 0
tag @a remove DeadPlayer
scoreboard players set @a deathTimer 0
scoreboard players set @a arcade.plr_deaths 0
team leave @a
clear @a

tellraw @a ["",{"text": "Match ended! Player ","color": "green"},{"selector": "@s","color": "yellow"},{"text": " has won the match! Final Points: ","color": "green"},{"score":{"name": "@s","objective": "playerkills"},"color": "yellow"}]
scoreboard players set @a playerkills 0
tp @a @e[type=armor_stand,tag=ArcadeAsset,tag=LobbyPoint,limit=1]
effect clear @a
effect give @a regeneration 1 255 true
bossbar set mgdr_arcade:match_time visible false
execute at @e[type=armor_stand,tag=ArcadeAsset,tag=LobbyPoint,limit=1] run spawnpoint @a
scoreboard players set .matchTime arcadeRule 0
