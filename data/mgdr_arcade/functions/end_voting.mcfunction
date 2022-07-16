scoreboard players set .voteStarted arcadeRule 0
execute if score .votedForTDM arcadeRule > .votedForFFA arcadeRule if score .votedForTDM arcadeRule > .votedForCTO arcadeRule run function mgdr_arcade:voting_system/gamemode/tdm_wins_vote
execute if score .votedForFFA arcadeRule > .votedForTDM arcadeRule if score .votedForFFA arcadeRule > .votedForCTO arcadeRule run function mgdr_arcade:voting_system/gamemode/ffa_wins_vote
execute if score .votedForCTO arcadeRule > .votedForTDM arcadeRule if score .votedForCTO arcadeRule > .votedForFFA arcadeRule run function mgdr_arcade:voting_system/gamemode/cto_wins_vote
bossbar set mgdr_arcade:tdm_votes visible false
bossbar set mgdr_arcade:ffa_votes visible false
bossbar set mgdr_arcade:cto_votes visible false
bossbar set mgdr_arcade:vote_time visible false
