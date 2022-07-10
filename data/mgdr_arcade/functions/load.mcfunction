scoreboard players add .enableArcadeFunctions gamerule 0
scoreboard players add .matchStarted arcadeRule 0
scoreboard players add .alliegiancePlayers arcadeRule 0
scoreboard players add .coalitionPlayers arcadeRule 0
scoreboard players add .coalitionPoints arcadeRule 0
scoreboard players add .alliegiancePoints arcadeRule 0
scoreboard players set .2 arcadeRule 2
team add alliegiance {"text":"Alliegiance","color": "red"}
team add coalition {"text":"Coalition","color": "blue"}
team modify alliegiance color red
team modify coalition color blue
scoreboard objectives add arcade.plr_deaths deathCount
scoreboard objectives add arcadeRule dummy
scoreboard objectives add deathTimer dummy
scoreboard objectives add chooseWeapon1 trigger
scoreboard objectives add chooseWeapon2 trigger
scoreboard objectives add chooseEquipment1 trigger
scoreboard objectives add chooseEquipment2 trigger
scoreboard objectives add weaponChoice1 dummy
scoreboard objectives add weaponChoice2 dummy
scoreboard objectives add equipmentChoice1 dummy
scoreboard objectives add equipmentChoice2 dummy
gamerule doImmediateRespawn true

bossbar add mgdr_arcade:alliegiance_points "Alliegiance Points"
bossbar add mgdr_arcade:coalition_points "Coalition Points"
bossbar set mgdr_arcade:alliegiance_points players @a
bossbar set mgdr_arcade:coalition_points players @a
execute if score .matchStarted arcadeRule matches 0 run bossbar set mgdr_arcade:alliegiance_points visible false
execute if score .matchStarted arcadeRule matches 0 run bossbar set mgdr_arcade:coalition_points visible false
bossbar set mgdr_arcade:alliegiance_points color red
bossbar set mgdr_arcade:coalition_points color blue
bossbar set mgdr_arcade:alliegiance_points style notched_10
bossbar set mgdr_arcade:coalition_points style notched_10
bossbar set mgdr_arcade:alliegiance_points max 50
bossbar set mgdr_arcade:coalition_points max 50
