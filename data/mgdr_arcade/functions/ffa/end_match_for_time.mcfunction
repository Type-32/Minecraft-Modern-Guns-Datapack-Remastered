scoreboard players set .matchStarted arcadeRule 0
tag @a remove DeadPlayer
scoreboard players set @a deathTimer 0
scoreboard players set @a arcade.plr_deaths 0
team leave @a
clear @a
scoreboard players set @a tempHighScore 0
execute as @a run scoreboard players operation @s tempHighScore = @s playerkills
scoreboard players set #highestScore arcadeRule 0
scoreboard players operation #highestScore arcadeRule > @a tempHighScore
scoreboard players operation @a tempHighScore -= #highestScore arcadeRule
tellraw @a ["",{"translate": "mgdr_arcade.gamemode.message.end_match.match_end_time","color": "green"},{"selector": "@a[scores={tempHighScore=0}]","color": "yellow"},{"translate": "mgdr_arcade.gamemode.message.end_match.won_match_final_scores","color": "green"},{"score":{"name": "@a[scores={tempHighScore=0},limit=1]","objective": "playerkills"},"color": "yellow"}]
#scoreboard players set @a tempHighScore 0
scoreboard players set @a playerkills 0
team leave @a

tp @a[tag=!forfeitedMatch] @e[type=armor_stand,tag=ArcadeAsset,tag=LobbyPoint,limit=1]
effect clear @a
effect give @a regeneration 1 255 true
effect give @a saturation 1 255 true
bossbar set mgdr_arcade:match_time visible false
execute at @e[type=armor_stand,tag=ArcadeAsset,tag=LobbyPoint,limit=1] run spawnpoint @a
tag @a remove forfeitedMatch
scoreboard players set .matchTime arcadeRule 0
