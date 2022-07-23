#tellraw @a "AfterAssign Allegiance Used"
execute as @r[team=allegiance,tag=!voluntary,limit=1] run function mgdr_arcade:teams/leave_a_join_c
execute store result score .allegiancePlayers arcadeRule if entity @a[team=allegiance]
#execute if score .allegiancePlayers arcadeRule > .expectedAllegiancePlayers arcadeRule run function mgdr_arcade:teams/after_assign_allegiance_dfs
