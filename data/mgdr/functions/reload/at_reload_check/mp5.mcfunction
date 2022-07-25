execute if entity @s[scores={009mag.standard=..0,mp5.at=1}] if score @s mp5.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={009mag.standard=..0,mp5.at=1}] run scoreboard players set @s mp5.reload 10
execute if entity @s[scores={mp5.reload=4,mp5.at=1},tag=!switchedMag] if score @s 009mag.standard matches 1.. run function mgdr:reload/action/009mm_switch

execute if entity @s[scores={009mag.ap=..0,mp5.at=2}] if score @s mp5.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={009mag.ap=..0,mp5.at=2}] run scoreboard players set @s mp5.reload 10
execute if entity @s[scores={mp5.reload=4,mp5.at=2},tag=!switchedMag] if score @s 009mag.ap matches 1.. run function mgdr:reload/action/009mm_switch

execute if entity @s[scores={009mag.hp=..0,mp5.at=3}] if score @s mp5.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={009mag.hp=..0,mp5.at=3}] run scoreboard players set @s mp5.reload 10
execute if entity @s[scores={mp5.reload=4,mp5.at=3},tag=!switchedMag] if score @s 009mag.hp matches 1.. run function mgdr:reload/action/009mm_switch

execute if entity @s[scores={009mag.fmj=..0,mp5.at=4}] if score @s mp5.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={009mag.fmj=..0,mp5.at=4}] run scoreboard players set @s mp5.reload 10
execute if entity @s[scores={mp5.reload=4,mp5.at=4},tag=!switchedMag] if score @s 009mag.fmj matches 1.. run function mgdr:reload/action/009mm_switch

execute if entity @s[scores={009mag.nato=..0,mp5.at=5}] if score @s mp5.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={009mag.nato=..0,mp5.at=5}] run scoreboard players set @s mp5.reload 10
execute if entity @s[scores={mp5.reload=4,mp5.at=5},tag=!switchedMag] if score @s 009mag.nato matches 1.. run function mgdr:reload/action/009mm_switch

execute if entity @s[scores={009mag.gzh=..0,mp5.at=6}] if score @s mp5.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={009mag.gzh=..0,mp5.at=6}] run scoreboard players set @s mp5.reload 10
execute if entity @s[scores={mp5.reload=4,mp5.at=6},tag=!switchedMag] if score @s 009mag.gzh matches 1.. run function mgdr:reload/action/009mm_switch
