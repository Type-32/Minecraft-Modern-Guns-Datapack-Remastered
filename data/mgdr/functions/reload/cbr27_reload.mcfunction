execute if entity @s[scores={556.fullMag=..0}] if score @s cbr27.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={556.fullMag=..0}] run scoreboard players set @s cbr27.reload 10
execute if entity @s[scores={cbr27.reload=0}] at @s run function mgdr:reload/reload_init/init_func
execute if entity @s[scores={cbr27.reload=4},tag=!Kilowatt] at @s run scoreboard players operation @s cbr27.ammo = @s xmx.ammo
execute if entity @s[scores={cbr27.reload=4},tag=Kilowatt] at @s run scoreboard players operation @s cbr27_kilo.ammo = @s xmx.ammo
execute if entity @s[scores={cbr27.reload=..3}] at @s run title @s actionbar ["",{"translate":"mgdr.translate.ammo.reloading","color":"red"}]
execute if entity @s[scores={cbr27.reload=4}] at @s run title @s[tag=NonExistentTag] actionbar ["",{"translate":"mgdr.translate.ammo.loaded","color":"gold"}]
execute if entity @s[scores={cbr27.reload=4},tag=!switchedMag] if score @s 556.fullMag matches 1.. run function mgdr:reload/action/556mm_switch
#execute if entity @s[scores={cbr27.reload=4}] run tag @s add switchedMag
execute if entity @s[scores={cbr27.reload=4}] at @s run tag @s remove gunDisabled
execute if entity @s[scores={cbr27.reload=3..}] at @s run tag @s remove playedReload
execute if entity @s[scores={cbr27.reload=5..}] at @s run tag @s remove switchedMag
execute if entity @s[scores={cbr27.reload=4..}] at @s run tag @s remove reloadGun
