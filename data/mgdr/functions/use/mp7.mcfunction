execute if entity @s[scores={usedCarrotPol=1..,mp7.fm=0}] run function mgdr:use/sub/mp7
execute if entity @s[scores={fireDelay=1,mp7.fm=1}] unless score @s mp7.ammo matches ..0 run function mgdr:action/mp7_act
execute if entity @s[scores={fireDelay=2,mp7.fm=1}] unless score @s mp7.ammo matches ..0 run function mgdr:action/mp7_act
execute if entity @s[scores={fireDelay=2,mp7.fm=1}] unless score @s mp7.ammo matches ..0 run scoreboard players operation /player.lastFiredUID gamerule = @s mgdr.pid
execute if entity @s[scores={fireDelay=2,mp7.fm=1}] unless score @s mp7.ammo matches ..0 run scoreboard players operation /player.lastFiredWeaponUID gamerule = @s mgdr.weaponUID
execute if entity @s[scores={fireDelay=3,mp7.fm=1}] unless score @s mp7.ammo matches ..0 run function mgdr:action/mp7_act
execute if entity @s[scores={fireDelay=4..,usedCarrotPol=1..,mp7.fm=1}] run function mgdr:use/sub/mp7
