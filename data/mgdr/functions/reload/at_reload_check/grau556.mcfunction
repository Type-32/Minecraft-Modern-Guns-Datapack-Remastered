execute if entity @s[scores={556mag.standard=..0,grau.at=1}] if score @s grau.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={556mag.standard=..0,grau.at=1}] run scoreboard players set @s grau.reload 10
execute if entity @s[scores={grau.reload=4,grau.at=1},tag=!switchedMag] if score @s 556mag.standard matches 1.. run function mgdr:reload/action/556mm_switch

execute if entity @s[scores={556mag.ap=..0,grau.at=2}] if score @s grau.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={556mag.ap=..0,grau.at=2}] run scoreboard players set @s grau.reload 10
execute if entity @s[scores={grau.reload=4,grau.at=2},tag=!switchedMag] if score @s 556mag.ap matches 1.. run function mgdr:reload/action/556mm_switch

execute if entity @s[scores={556mag.hp=..0,grau.at=3}] if score @s grau.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={556mag.hp=..0,grau.at=3}] run scoreboard players set @s grau.reload 10
execute if entity @s[scores={grau.reload=4,grau.at=3},tag=!switchedMag] if score @s 556mag.hp matches 1.. run function mgdr:reload/action/556mm_switch

execute if entity @s[scores={556mag.fmj=..0,grau.at=4}] if score @s grau.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={556mag.fmj=..0,grau.at=4}] run scoreboard players set @s grau.reload 10
execute if entity @s[scores={grau.reload=4,grau.at=4},tag=!switchedMag] if score @s 556mag.fmj matches 1.. run function mgdr:reload/action/556mm_switch

execute if entity @s[scores={556mag.nato=..0,grau.at=5}] if score @s grau.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={556mag.nato=..0,grau.at=5}] run scoreboard players set @s grau.reload 10
execute if entity @s[scores={grau.reload=4,grau.at=5},tag=!switchedMag] if score @s 556mag.nato matches 1.. run function mgdr:reload/action/556mm_switch

execute if entity @s[scores={556mag.gzh=..0,grau.at=6}] if score @s grau.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={556mag.gzh=..0,grau.at=6}] run scoreboard players set @s grau.reload 10
execute if entity @s[scores={grau.reload=4,grau.at=6},tag=!switchedMag] if score @s 556mag.gzh matches 1.. run function mgdr:reload/action/556mm_switch
