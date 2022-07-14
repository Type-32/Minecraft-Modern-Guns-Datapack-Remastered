scoreboard players add .votedForTDM arcadeRule 1
tellraw @s ["",{"text": "You've voted for ","color": "yellow"},{"text": "TDM ","color": "green"},{"text": "gamemode.","color": "yellow"}]
scoreboard players set @s vote_tdm 0
