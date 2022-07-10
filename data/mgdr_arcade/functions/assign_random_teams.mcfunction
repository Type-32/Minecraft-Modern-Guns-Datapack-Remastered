team join coalition
execute if predicate mgdr:half_chance run team join alliegiance
execute if score .alliegiancePlayers arcadeRule > .expectedAlliegiancePlayers arcadeRule run function mgdr_arcade:teams/leave_a_join_c
execute if score .coalitionPlayers arcadeRule > .expectedCoalitionPlayers arcadeRule run function mgdr_arcade:teams/leave_c_join_a
