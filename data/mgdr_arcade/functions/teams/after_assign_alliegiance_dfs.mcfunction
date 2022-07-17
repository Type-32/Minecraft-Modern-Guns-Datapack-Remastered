#tellraw @a "AfterAssign Alliegiance Used"
execute as @r[team=alliegiance,tag=!voluntary,limit=1] run function mgdr_arcade:teams/leave_a_join_c
execute store result score .alliegiancePlayers arcadeRule if entity @a[team=alliegiance]
execute if score .alliegiancePlayers arcadeRule > .expectedAlliegiancePlayers arcadeRule run function mgdr_arcade:teams/after_assign_alliegiance_dfs
