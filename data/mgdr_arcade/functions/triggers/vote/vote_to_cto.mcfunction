scoreboard players add .votedForCTO arcadeRule 1
tellraw @s ["",{"text": "You've voted for ","color": "yellow"},{"text": "CTO ","color": "green"},{"text": "gamemode.","color": "yellow"}]
scoreboard players reset @s vote_tdm
scoreboard players reset @s vote_ffa
scoreboard players reset @s vote_cto
