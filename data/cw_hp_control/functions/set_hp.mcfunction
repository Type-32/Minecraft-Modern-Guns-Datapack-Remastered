execute if score #temp cw_hp_old matches ..0 if score .enableArcadeFunctions mgdr.gamerule matches 1.. run function cw_hp_control:arcade_kill_player_register
execute if score #temp cw_hp_old matches ..0 if score .enableArcadeFunctions mgdr.gamerule matches 0 run function cw_hp_control:damage_player_register
execute if score #temp cw_hp_old matches 1..511 run function cw_hp_control:set_hp/l3_i0
execute if score #temp cw_hp_old matches 512..1023 run function cw_hp_control:set_hp/l3_i512
execute if score .enableArcadeFunctions mgdr.gamerule matches 1.. run tag @s remove hasAutoHealed
execute if score .enableArcadeFunctions mgdr.gamerule matches 1.. run scoreboard players set @s hitTime 0
execute if score .enableArcadeFunctions mgdr.gamerule matches 1.. run effect clear @s regeneration
