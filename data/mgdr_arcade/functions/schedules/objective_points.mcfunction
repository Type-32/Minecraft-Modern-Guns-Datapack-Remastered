schedule function mgdr_arcade:schedules/objective_points 2s
execute if score .gamemode arcadeRule matches 2 if score .matchStarted arcadeRule matches 1 as @e[tag=informAlliegianceCaptured,type=armor_stand] run scoreboard players add .alliegiancePoints arcadeRule 1
execute if score .gamemode arcadeRule matches 2 if score .matchStarted arcadeRule matches 1 as @e[tag=informCoalitionCaptured,type=armor_stand] run scoreboard players add .coalitionPoints arcadeRule 1
