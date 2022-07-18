execute if score .voteStarted arcadeRule matches 0 if score .preparationTime arcadeRule matches 0 if score .matchStarted arcadeRule matches 0 if score .totalPlayers arcadeRule matches 2.. run function mgdr_arcade:vote_for_modes
execute if score .totalPlayers arcadeRule matches ..1 run tellraw @a ["",{"translate":"mgdr_arcade.gamemode.message.preprocessing.not_enough_players"}]
execute if score .voteStarted arcadeRule matches 1 run tellraw @a ["",{"translate":"mgdr_arcade.gamemode.message.preprocessing.vote_already_started"}]
execute if score .preparationTime arcadeRule matches 1.. run tellraw @a ["",{"translate":"mgdr_arcade.gamemode.message.preprocessing.match_already_started"}]
execute if score .matchStarted arcadeRule matches 1.. run tellraw @a ["",{"translate":"mgdr_arcade.gamemode.message.preprocessing.match_already_started"}]
