execute if score .gamemode arcadeRule matches 0 if score .allegiancePoints arcadeRule >= .coalitionPoints arcadeRule run function mgdr_arcade:match/stats/allegiance_record_stats
execute if score .gamemode arcadeRule matches 0 if score .allegiancePoints arcadeRule <= .coalitionPoints arcadeRule run function mgdr_arcade:match/stats/coalition_record_stats
execute if score .gamemode arcadeRule matches 2 if score .allegiancePoints arcadeRule >= .coalitionPoints arcadeRule run function mgdr_arcade:match/stats/allegiance_record_stats
execute if score .gamemode arcadeRule matches 2 if score .allegiancePoints arcadeRule <= .coalitionPoints arcadeRule run function mgdr_arcade:match/stats/coalition_record_stats
execute if score .gamemode arcadeRule matches 1 if score @s playerkills matches 25.. run function mgdr_arcade:match/stats/ffa_player_record_stats
execute if score .gamemode arcadeRule matches 1 if score .matchTime arcadeRule matches ..0 run function mgdr_arcade:match/stats/ffa_time_record_stats
