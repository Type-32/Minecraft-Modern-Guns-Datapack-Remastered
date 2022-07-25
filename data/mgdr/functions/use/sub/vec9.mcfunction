execute unless score @s vec9.ammo matches ..0 run function mgdr:action/vec9_act
execute if score @s vec9.ammo matches ..0 run playsound mgdr:others.empty player @s
scoreboard players operation /player.lastFiredUID mgdr.gamerule = @s mgdr.pid
scoreboard players operation /player.lastFiredWeaponUID mgdr.gamerule = @s mgdr.weaponUID
