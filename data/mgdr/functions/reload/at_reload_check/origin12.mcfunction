execute if entity @s[scores={045mag.standard=..0,origin12.at=1}] if score @s origin12.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={045mag.standard=..0,origin12.at=1}] run scoreboard players set @s origin12.reload 10
execute if entity @s[scores={origin12.reload=4,origin12.at=1},tag=!switchedMag] if score @s 045mag.standard matches 1.. run function mgdr:reload/action/12mmg_switch

execute if entity @s[scores={045mag.ap=..0,origin12.at=2}] if score @s origin12.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={045mag.ap=..0,origin12.at=2}] run scoreboard players set @s origin12.reload 10
execute if entity @s[scores={origin12.reload=4,origin12.at=2},tag=!switchedMag] if score @s 045mag.ap matches 1.. run function mgdr:reload/action/12mmg_switch

execute if entity @s[scores={045mag.hp=..0,origin12.at=3}] if score @s origin12.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={045mag.hp=..0,origin12.at=3}] run scoreboard players set @s origin12.reload 10
execute if entity @s[scores={origin12.reload=4,origin12.at=3},tag=!switchedMag] if score @s 045mag.hp matches 1.. run function mgdr:reload/action/12mmg_switch

execute if entity @s[scores={045mag.fmj=..0,origin12.at=4}] if score @s origin12.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={045mag.fmj=..0,origin12.at=4}] run scoreboard players set @s origin12.reload 10
execute if entity @s[scores={origin12.reload=4,origin12.at=4},tag=!switchedMag] if score @s 045mag.fmj matches 1.. run function mgdr:reload/action/12mmg_switch

execute if entity @s[scores={045mag.nato=..0,origin12.at=5}] if score @s origin12.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={045mag.nato=..0,origin12.at=5}] run scoreboard players set @s origin12.reload 10
execute if entity @s[scores={origin12.reload=4,origin12.at=5},tag=!switchedMag] if score @s 045mag.nato matches 1.. run function mgdr:reload/action/12mmg_switch

execute if entity @s[scores={045mag.gzh=..0,origin12.at=6}] if score @s origin12.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={045mag.gzh=..0,origin12.at=6}] run scoreboard players set @s origin12.reload 10
execute if entity @s[scores={origin12.reload=4,origin12.at=6},tag=!switchedMag] if score @s 045mag.gzh matches 1.. run function mgdr:reload/action/12mmg_switch
