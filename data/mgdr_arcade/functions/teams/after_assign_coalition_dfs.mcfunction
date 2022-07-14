#tellraw @a "AfterAssign Coalition Used"
execute as @r[team=coalition,tag=!voluntary,limit=1] run function mgdr_arcade:teams/leave_c_join_a
#execute if score .coalitionPlayers arcadeRule > .expectedCoalitionPlayers arcadeRule run function mgdr_arcade:teams/after_assign_coalition_dfs
