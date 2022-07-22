scoreboard players add @a arcade.plr_deaths 0
scoreboard players add @a arcadeRule 0
scoreboard players add @a deathTimer 0
scoreboard players add @a weaponLoadout 0
scoreboard players add @a equipmentLoadout 0
scoreboard players add @a chooseWeapon1 0
scoreboard players add @a chooseWeapon2 0
scoreboard players add @a chooseEquipment1 0
scoreboard players add @a chooseEquipment2 0
scoreboard players add @a weaponChoice1 0
scoreboard players add @a weaponChoice2 0
scoreboard players add @a equipmentChoice1 0
scoreboard players add @a equipmentChoice2 0
scoreboard players add @a tempHighScore 0
scoreboard players add @a hitTime 0
scoreboard players add @a vote_tdm 0
scoreboard players add @a vote_ffa 0
scoreboard players add @a vote_cto 0
scoreboard players add @a playerLeftGame 0

scoreboard players add @a a_stats.totalWonMatches 0
scoreboard players add @a a_stats.matchWinStreak 0
scoreboard players add @a a_match.playerKills 0
scoreboard players add @a a_match.playerKillStreak 0

scoreboard players enable @a weaponLoadout
scoreboard players enable @a equipmentLoadout
scoreboard players enable @a chooseWeapon1
scoreboard players enable @a chooseWeapon2
scoreboard players enable @a chooseEquipment1
scoreboard players enable @a chooseEquipment2

execute store result score .allegiancePlayers arcadeRule if entity @a[team=allegiance]
execute store result score .coalitionPlayers arcadeRule if entity @a[team=coalition]
execute store result score .totalPlayers arcadeRule if entity @a
execute store result score .FFAPlayers arcadeRule if entity @a[team=ffa_player]

execute if score .gamemode arcadeRule matches 0 run function mgdr_arcade:tdm_main
execute if score .gamemode arcadeRule matches 1 run function mgdr_arcade:ffa_main
execute if score .gamemode arcadeRule matches 2 run function mgdr_arcade:cto_main
execute if score .voteStarted arcadeRule matches 1 run function mgdr_arcade:vote_loop_func
execute if score .matchStarted arcadeRule matches 0 if score .preparationTime arcadeRule matches 1.. run function mgdr_arcade:schedules/prep_time
execute if score .matchStarted arcadeRule matches 1 if score .preparationTime arcadeRule matches 0 run function mgdr_arcade:match/in_match_loop
execute as @a[scores={playerLeftGame=1..}] run function mgdr_arcade:match/forfeit_match

execute as @a[scores={weaponLoadout=1..}] at @s run function mgdr_arcade:triggers/weapon_loadout
execute as @a[scores={equipmentLoadout=1..}] at @s run function mgdr_arcade:triggers/equipment_loadout
execute as @a[scores={chooseWeapon1=1..}] at @s run function mgdr_arcade:triggers/choose_first_weapon
execute as @a[scores={chooseWeapon2=1..}] at @s run function mgdr_arcade:triggers/choose_second_weapon
execute as @a[scores={chooseEquipment1=1..}] at @s run function mgdr_arcade:triggers/choose_first_equipment
execute as @a[scores={chooseEquipment2=1..}] at @s run function mgdr_arcade:triggers/choose_second_equipment
execute as @a[scores={vote_tdm=1..}] at @s run function mgdr_arcade:triggers/vote/vote_to_tdm
execute as @a[scores={vote_ffa=1..}] at @s run function mgdr_arcade:triggers/vote/vote_to_ffa
execute as @a[scores={vote_cto=1..}] at @s run function mgdr_arcade:triggers/vote/vote_to_cto

execute if score #playerRule.autoHeal arcadeRule matches 1 run function mgdr_arcade:player_autoheal

execute as @a run function mgdr_arcade:advancements