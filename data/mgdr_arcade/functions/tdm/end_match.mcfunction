scoreboard players set .matchStarted arcadeRule 0
tag @a remove DeadPlayer
scoreboard players set @a deathTimer 0
scoreboard players set @a arcade.plr_deaths 0
function mgdr_arcade:match/record_stats_at_match_end
team leave @a
clear @a
execute unless score .allegiancePoints arcadeRule matches 50.. if score .coalitionPoints arcadeRule matches 50.. run tellraw @a ["",{"translate": "mgdr_arcade.gamemode.message.end_match.team","color": "green"},{"translate": "mgdr_arcade.gamemode.message.end_match.coalition","color": "blue"},{"translate": "mgdr_arcade.gamemode.message.end_match.has_won_the_match","color": "green"}]
execute if score .allegiancePoints arcadeRule matches 50.. unless score .coalitionPoints arcadeRule matches 50.. run tellraw @a ["",{"translate": "mgdr_arcade.gamemode.message.end_match.team","color": "green"},{"translate": "mgdr_arcade.gamemode.message.end_match.allegiance","color": "red"},{"translate": "mgdr_arcade.gamemode.message.end_match.has_won_the_match","color": "green"}]
execute if score .allegiancePoints arcadeRule > .coalitionPoints arcadeRule unless score .allegiancePoints arcadeRule matches 50.. unless score .coalitionPoints arcadeRule matches 50.. run tellraw @a ["",{"translate": "mgdr_arcade.gamemode.message.end_match.team","color": "green"},{"translate": "mgdr_arcade.gamemode.message.end_match.allegiance","color": "red"},{"translate": "mgdr_arcade.gamemode.message.end_match.has_won_the_match","color": "green"}]
execute if score .allegiancePoints arcadeRule < .coalitionPoints arcadeRule unless score .allegiancePoints arcadeRule matches 50.. unless score .coalitionPoints arcadeRule matches 50.. run tellraw @a ["",{"translate": "mgdr_arcade.gamemode.message.end_match.team","color": "green"},{"translate": "mgdr_arcade.gamemode.message.end_match.coalition","color": "blue"},{"translate": "mgdr_arcade.gamemode.message.end_match.has_won_the_match","color": "green"}]
execute if score .allegiancePoints arcadeRule = .coalitionPoints arcadeRule unless score .allegiancePoints arcadeRule matches 50.. unless score .coalitionPoints arcadeRule matches 50.. run tellraw @a ["",{"translate": "mgdr_arcade.gamemode.message.end_match.draw","color": "green"}]
execute if score .allegiancePlayers arcadeRule matches 0 run tellraw @a ["",{"translate": "mgdr_arcade.gamemode.message.end_match.team","color": "green"},{"translate": "mgdr_arcade.gamemode.message.end_match.allegiance","color": "red"},{"translate": "mgdr_arcade.gamemode.message.end_match.has_forfeited_the_match","color": "green"}]
execute if score .coalitionPlayers arcadeRule matches 0 run tellraw @a ["",{"translate": "mgdr_arcade.gamemode.message.end_match.team","color": "green"},{"translate": "mgdr_arcade.gamemode.message.end_match.coalition","color": "blue"},{"translate": "mgdr_arcade.gamemode.message.end_match.has_forfeited_the_match","color": "green"}]
execute if score .coalitionPlayers arcadeRule matches 1.. if score .allegiancePlayers arcadeRule matches 1.. run tellraw @a ["",{"translate": "mgdr_arcade.gamemode.message.end_match.match_end_and_scores","color": "green"},{"score":{"name": ".allegiancePoints","objective": "arcadeRule"},"color": "red","bold": true},{"text": "-","color": "green"},{"score":{"name": ".coalitionPoints","objective": "arcadeRule"},"color": "blue","bold": true}]
tp @a[tag=!forfeitedMatch] @e[type=armor_stand,tag=ArcadeAsset,tag=LobbyPoint,limit=1]
effect clear @a
effect give @a regeneration 1 1 true
effect give @a saturation 1 255 true
bossbar set mgdr_arcade:allegiance_points visible false
bossbar set mgdr_arcade:coalition_points visible false
bossbar set mgdr_arcade:match_time visible false
scoreboard players set .coalitionPoints arcadeRule 0
scoreboard players set .allegiancePoints arcadeRule 0
execute at @e[type=armor_stand,tag=ArcadeAsset,tag=LobbyPoint,limit=1] run spawnpoint @a
scoreboard players set .matchTime arcadeRule 0
tag @a remove forfeitedMatch
tag @a remove voluntary