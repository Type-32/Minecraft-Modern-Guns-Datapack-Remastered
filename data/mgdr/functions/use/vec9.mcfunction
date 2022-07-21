execute if score @s usedCarrotPol matches 1.. if score @s vec9.fm matches 0 run function mgdr:use/sub/vec9
execute if score @s fireDelay matches 1 if score @s vec9.fm matches 1 unless score @s vec9.ammo matches ..0 run function mgdr:action/vec9_act
execute if score @s fireDelay matches 2 if score @s vec9.fm matches 1 unless score @s vec9.ammo matches ..0 run function mgdr:action/vec9_act
execute if score @s fireDelay matches 2 if score @s vec9.fm matches 1 unless score @s vec9.ammo matches ..0 run scoreboard players operation /player.lastFiredUID gamerule = @s mgdr.pid
execute if score @s fireDelay matches 2 if score @s vec9.fm matches 1 unless score @s vec9.ammo matches ..0 run scoreboard players operation /player.lastFiredWeaponUID gamerule = @s mgdr.weaponUID
execute if score @s fireDelay matches 3 if score @s vec9.fm matches 1 unless score @s vec9.ammo matches ..0 run function mgdr:action/vec9_act
execute if score @s usedCarrotPol matches 1.. if score @s fireDelay matches 4.. if score @s vec9.fm matches 1 run function mgdr:use/sub/vec9
