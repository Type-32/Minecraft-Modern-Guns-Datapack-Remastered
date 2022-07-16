execute if score .preparationTime arcadeRule matches 1.. run scoreboard players remove .preparationTime arcadeRule 1
execute if score .preparationTime arcadeRule matches 100 run title @a title {"text": "5","color": "gold"}
execute if score .preparationTime arcadeRule matches 80 run title @a title {"text": "4","color": "gold"}
execute if score .preparationTime arcadeRule matches 60 run title @a title {"text": "3","color": "gold"}
execute if score .preparationTime arcadeRule matches 40 run title @a title {"text": "2","color": "gold"}
execute if score .preparationTime arcadeRule matches 20 run title @a title {"text": "1","color": "gold"}
execute if score .preparationTime arcadeRule matches 1.. run title @a subtitle {"text": "Starting Match in...","color": "yellow"}
execute unless score .preparationTime arcadeRule matches 1.. if score .gamemode arcadeRule matches 0 run function mgdr_arcade:tdm/start_match
execute unless score .preparationTime arcadeRule matches 1.. if score .gamemode arcadeRule matches 1 run function mgdr_arcade:ffa/start_match
execute unless score .preparationTime arcadeRule matches 1.. if score .gamemode arcadeRule matches 2 run function mgdr_arcade:cto/start_match
execute unless score .preparationTime arcadeRule matches 1.. run scoreboard players set .votedForTDM arcadeRule 0
execute unless score .preparationTime arcadeRule matches 1.. run scoreboard players set .votedForFFA arcadeRule 0
