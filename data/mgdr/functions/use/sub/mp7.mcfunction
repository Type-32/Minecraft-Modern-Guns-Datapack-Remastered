execute unless score @s mp7.ammo matches ..0 run function mgdr:action/mp7_act
execute if score @s mp7.ammo matches ..0 run playsound mgdr:others.empty player @s
scoreboard players operation /player.lastFiredUID gamerule = @s mgdr.pid
scoreboard players operation /player.lastFiredWeaponUID gamerule = @s mgdr.weaponUID
