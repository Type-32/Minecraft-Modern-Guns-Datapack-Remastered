scoreboard players add .votedForCTO arcadeRule 1
tellraw @s ["",{"translate": "mgdr_arcade.gamemode.message.vote.voted_for","color": "yellow"},{"translate": "mgdr_arcade.gamemode.message.vote.cto","color": "green"},{"translate": "mgdr_arcade.gamemode.message.vote.gamemode","color": "yellow"}]
scoreboard players reset @s vote_tdm
scoreboard players reset @s vote_ffa
scoreboard players reset @s vote_cto
