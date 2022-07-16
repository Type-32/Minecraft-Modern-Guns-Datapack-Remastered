scoreboard players add .votedForFFA arcadeRule 1
tellraw @s ["",{"text": "You've voted for ","color": "yellow"},{"text": "FFA ","color": "green"},{"text": "gamemode.","color": "yellow"}]
scoreboard players reset @s vote_tdm
scoreboard players reset @s vote_ffa
scoreboard players reset @s vote_cto
