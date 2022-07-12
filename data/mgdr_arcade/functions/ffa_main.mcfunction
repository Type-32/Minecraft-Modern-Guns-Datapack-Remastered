execute as @a[scores={arcade.plr_deaths=1..}] at @s if score .matchStarted arcadeRule matches 1.. run function mgdr_arcade:ffa/death
scoreboard players remove @a[scores={deathTimer=1..}] deathTimer 1
execute as @a[scores={deathTimer=0},tag=DeadPlayer] at @s if score .matchStarted arcadeRule matches 1.. run function mgdr_arcade:ffa/respawn_player
execute if score .matchStarted arcadeRule matches 1.. as @a[scores={playerkills=25..},limit=1] run function mgdr_arcade:ffa/end_match_for_player
execute if score .matchStarted arcadeRule matches 1.. unless score .matchTime arcadeRule matches 1.. run function mgdr_arcade:ffa/end_match_for_time
