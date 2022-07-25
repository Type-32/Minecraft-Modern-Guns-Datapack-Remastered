execute if entity @s[scores={762mag.standard=..0,sig716.at=1}] if score @s sig716.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={762mag.standard=..0,sig716.at=1}] run scoreboard players set @s sig716.reload 10
execute if entity @s[scores={sig716.reload=4,sig716.at=1},tag=!switchedMag] if score @s 762mag.standard matches 1.. run function mgdr:reload/action/762mm_switch

execute if entity @s[scores={762mag.ap=..0,sig716.at=2}] if score @s sig716.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={762mag.ap=..0,sig716.at=2}] run scoreboard players set @s sig716.reload 10
execute if entity @s[scores={sig716.reload=4,sig716.at=2},tag=!switchedMag] if score @s 762mag.ap matches 1.. run function mgdr:reload/action/762mm_switch

execute if entity @s[scores={762mag.hp=..0,sig716.at=3}] if score @s sig716.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={762mag.hp=..0,sig716.at=3}] run scoreboard players set @s sig716.reload 10
execute if entity @s[scores={sig716.reload=4,sig716.at=3},tag=!switchedMag] if score @s 762mag.hp matches 1.. run function mgdr:reload/action/762mm_switch

execute if entity @s[scores={762mag.fmj=..0,sig716.at=4}] if score @s sig716.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={762mag.fmj=..0,sig716.at=4}] run scoreboard players set @s sig716.reload 10
execute if entity @s[scores={sig716.reload=4,sig716.at=4},tag=!switchedMag] if score @s 762mag.fmj matches 1.. run function mgdr:reload/action/762mm_switch

execute if entity @s[scores={762mag.nato=..0,sig716.at=5}] if score @s sig716.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={762mag.nato=..0,sig716.at=5}] run scoreboard players set @s sig716.reload 10
execute if entity @s[scores={sig716.reload=4,sig716.at=5},tag=!switchedMag] if score @s 762mag.nato matches 1.. run function mgdr:reload/action/762mm_switch

execute if entity @s[scores={762mag.gzh=..0,sig716.at=6}] if score @s sig716.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={762mag.gzh=..0,sig716.at=6}] run scoreboard players set @s sig716.reload 10
execute if entity @s[scores={sig716.reload=4,sig716.at=6},tag=!switchedMag] if score @s 762mag.gzh matches 1.. run function mgdr:reload/action/762mm_switch
