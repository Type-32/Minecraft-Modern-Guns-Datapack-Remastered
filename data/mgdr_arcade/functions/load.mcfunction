scoreboard objectives add arcade.plr_deaths deathCount
scoreboard objectives add arcadeRule dummy
scoreboard objectives add deathTimer dummy

scoreboard objectives add weaponLoadout trigger
scoreboard objectives add equipmentLoadout trigger
scoreboard objectives add chooseWeapon1 trigger
scoreboard objectives add chooseWeapon2 trigger
scoreboard objectives add chooseEquipment1 trigger
scoreboard objectives add chooseEquipment2 trigger
scoreboard objectives add vote_tdm trigger
scoreboard objectives add vote_ffa trigger
scoreboard objectives add vote_cto trigger

scoreboard objectives add objectiveCaptureDelay dummy
scoreboard objectives add mgdr.objectiveUID dummy
scoreboard objectives add playerLeftGame minecraft.custom:minecraft.leave_game

scoreboard objectives add weaponChoice1 dummy
scoreboard objectives add weaponChoice2 dummy
scoreboard objectives add equipmentChoice1 dummy
scoreboard objectives add equipmentChoice2 dummy
scoreboard objectives add playerkills dummy
scoreboard objectives add tempHighScore dummy
scoreboard objectives add hitTime dummy
scoreboard players add .enableArcadeFunctions gamerule 0
scoreboard players add .matchStarted arcadeRule 0
scoreboard players add .gamemode arcadeRule 0
scoreboard players add .alliegiancePlayers arcadeRule 0
scoreboard players add .coalitionPlayers arcadeRule 0
scoreboard players add .coalitionPoints arcadeRule 0
scoreboard players add .alliegiancePoints arcadeRule 0
scoreboard players add .matchTime arcadeRule 0
scoreboard players add #highestScore arcadeRule 0
scoreboard players add #playerRule.autoHeal arcadeRule 0
scoreboard players add .voteStarted arcadeRule 0
scoreboard players add .votedForTDM arcadeRule 0
scoreboard players add .votedForFFA arcadeRule 0
scoreboard players add .votedForCTO arcadeRule 0
scoreboard players add .voteTime arcadeRule 0
scoreboard players add .preparationTime arcadeRule 0
execute if score #playerRule.autoHeal arcadeRule matches 1 run scoreboard players set #playerRule.autoHeal arcadeRule 1
scoreboard players set .2 arcadeRule 2
team add alliegiance {"text":"Alliegiance","color": "red"}
team add coalition {"text":"Coalition","color": "blue"}
team modify alliegiance color red
team modify coalition color blue
gamerule doImmediateRespawn true
function mgdr_arcade:schedules/match_time_schedule

bossbar add mgdr_arcade:alliegiance_points "Alliegiance Points"
bossbar add mgdr_arcade:coalition_points "Coalition Points"
bossbar add mgdr_arcade:match_time "Match Time"
bossbar set mgdr_arcade:alliegiance_points players @a
bossbar set mgdr_arcade:coalition_points players @a
bossbar set mgdr_arcade:match_time players @a
execute if score .matchStarted arcadeRule matches 0 run bossbar set mgdr_arcade:alliegiance_points visible false
execute if score .matchStarted arcadeRule matches 0 run bossbar set mgdr_arcade:coalition_points visible false
execute if score .matchStarted arcadeRule matches 0 run bossbar set mgdr_arcade:match_time visible false
bossbar set mgdr_arcade:alliegiance_points color red
bossbar set mgdr_arcade:coalition_points color blue
bossbar set mgdr_arcade:match_time color white
bossbar set mgdr_arcade:alliegiance_points style notched_10
bossbar set mgdr_arcade:coalition_points style notched_10
bossbar set mgdr_arcade:match_time style notched_6
bossbar set mgdr_arcade:alliegiance_points max 50
bossbar set mgdr_arcade:coalition_points max 50
bossbar set mgdr_arcade:match_time max 9600

bossbar add mgdr_arcade:tdm_votes "Team Death Match Votes"
bossbar add mgdr_arcade:ffa_votes "Free-For-All Votes"
bossbar add mgdr_arcade:cto_votes "Capture The Objective Votes"
bossbar add mgdr_arcade:vote_time "Vote Time"
bossbar set mgdr_arcade:tdm_votes players @a
bossbar set mgdr_arcade:ffa_votes players @a
bossbar set mgdr_arcade:cto_votes players @a
bossbar set mgdr_arcade:vote_time players @a
execute if score .voteStarted arcadeRule matches 0 run bossbar set mgdr_arcade:tdm_votes visible false
execute if score .voteStarted arcadeRule matches 0 run bossbar set mgdr_arcade:ffa_votes visible false
execute if score .voteStarted arcadeRule matches 0 run bossbar set mgdr_arcade:cto_votes visible false
execute if score .voteStarted arcadeRule matches 0 run bossbar set mgdr_arcade:vote_time visible false
bossbar set mgdr_arcade:tdm_votes color red
bossbar set mgdr_arcade:ffa_votes color blue
bossbar set mgdr_arcade:cto_votes color green
bossbar set mgdr_arcade:vote_time color white
bossbar set mgdr_arcade:tdm_votes style progress
bossbar set mgdr_arcade:ffa_votes style progress
bossbar set mgdr_arcade:cto_votes style progress
bossbar set mgdr_arcade:vote_time style notched_20
bossbar set mgdr_arcade:tdm_votes max 50
bossbar set mgdr_arcade:ffa_votes max 50
bossbar set mgdr_arcade:cto_votes max 50
bossbar set mgdr_arcade:vote_time max 400

function mgdr_arcade:schedules/objective_init
function mgdr_arcade:schedules/objective_points