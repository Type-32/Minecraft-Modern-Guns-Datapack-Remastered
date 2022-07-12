execute if entity @s[scores={12mmG.fullMag=..0}] if score @s origin12.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={12mmG.fullMag=..0}] run scoreboard players set @s origin12.reload 10
execute if entity @s[scores={origin12.reload=0}] at @s run function mgdr:reload/reload_init/init_func

execute if entity @s[scores={origin12.reload=4}] at @s run scoreboard players operation @s origin12.ammo = @s xmx.ammo

execute if entity @s[scores={origin12.reload=..3}] at @s run title @s actionbar ["",{"text":"\uEff8\uEff9","color": "red"}]
execute if entity @s[scores={origin12.reload=4}] at @s run title @s[tag=NonExistentTag] actionbar ["",{"translate":"mgdr.translate.ammo.loaded","color":"gold"}]
execute if entity @s[scores={origin12.reload=4},tag=!switchedMag] if score @s 12mmG.fullMag matches 1.. run function mgdr:reload/action/12mmg_switch
execute if entity @s[scores={origin12.reload=4}] at @s run tag @s remove gunDisabled
execute if entity @s[scores={origin12.reload=3..}] at @s run tag @s remove playedReload
execute if entity @s[scores={origin12.reload=5..}] at @s run tag @s remove switchedMag
execute if entity @s[scores={origin12.reload=4..}] at @s run tag @s remove reloadGun