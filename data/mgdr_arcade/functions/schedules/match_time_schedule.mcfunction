schedule function mgdr_arcade:schedules/match_time_schedule 1t
execute if score .matchTime arcadeRule matches 1.. run scoreboard players remove .matchTime arcadeRule 1
execute store result bossbar mgdr_arcade:match_time value run scoreboard players get .matchTime arcadeRule
execute unless score .matchTime arcadeRule matches 1.. run schedule clear mgdr_arcade:schedules/match_time_schedule
