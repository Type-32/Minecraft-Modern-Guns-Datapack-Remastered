scoreboard players add .votedForTDM arcadeRule 1
tellraw @s ["",{"text": "You've voted for ","color": "yellow"},{"text": "TDM ","color": "green"},{"text": "gamemode.","color": "yellow"}]
scoreboard players reset @s vote_tdm
scoreboard players reset @s vote_ffa
scoreboard players reset @s vote_cto
