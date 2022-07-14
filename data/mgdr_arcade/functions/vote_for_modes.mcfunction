scoreboard players set .voteStarted arcadeRule 1
scoreboard players set .votedForTDM arcadeRule 0
scoreboard players set .votedForFFA arcadeRule 0
bossbar set mgdr_arcade:tdm_votes players @a
bossbar set mgdr_arcade:ffa_votes players @a
bossbar set mgdr_arcade:vote_time players @a
bossbar set mgdr_arcade:tdm_votes visible true
bossbar set mgdr_arcade:ffa_votes visible true
bossbar set mgdr_arcade:vote_time visible true
execute store result bossbar mgdr_arcade:tdm_votes max run scoreboard players get .totalPlayers arcadeRule
execute store result bossbar mgdr_arcade:ffa_votes max run scoreboard players get .totalPlayers arcadeRule
scoreboard players enable @a vote_ffa
scoreboard players enable @a vote_tdm
scoreboard players set .voteTime arcadeRule 400
tellraw @a ["",{"text":" \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"dark_blue","strikethrough":true}]
tellraw @a ["",{"text":"Vote For Gamemodes","color": "gold"}]
tellraw @a [""]
tellraw @a ["",{"text":"Team Death Match","color": "green"},{"text": "   "},{"text": "[Click here to vote]","color": "yellow","clickEvent": {"action": "run_command","value": "/trigger vote_tdm"}}]
tellraw @a ["",{"text":"Free For All","color": "green"},{"text": "   "},{"text": "[Click here to vote]","color": "yellow","clickEvent": {"action": "run_command","value": "/trigger vote_ffa"}}]
tellraw @a ["",{"text":" \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020","color":"dark_blue","strikethrough":true}]
