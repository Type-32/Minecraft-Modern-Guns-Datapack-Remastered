execute store result bossbar mgdr_arcade:vote_time value run scoreboard players get .voteTime arcadeRule
execute store result bossbar mgdr_arcade:ffa_votes value run scoreboard players get .votedForFFA arcadeRule
execute store result bossbar mgdr_arcade:tdm_votes value run scoreboard players get .votedForTDM arcadeRule
execute if score .voteTime arcadeRule matches 1.. run scoreboard players remove .voteTime arcadeRule 1
execute unless score .voteTime arcadeRule matches 1.. run function mgdr_arcade:end_voting