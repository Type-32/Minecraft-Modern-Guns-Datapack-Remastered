execute if entity @s[scores={762.fullMag=..0}] if score @s ak.reload matches 0 run tellraw @s {"translate":"mgdr.translate.ammo.no_reload","color":"red"}
execute if entity @s[scores={762.fullMag=..0}] run scoreboard players set @s ak.reload 10
execute if entity @s[scores={ak.reload=0}] at @s run function mgdr:reload/reload_init/init_func

execute if entity @s[scores={ak.reload=4},tag=!Resonance] at @s run scoreboard players operation @s ak.ammo = @s xmx.ammo
execute if entity @s[scores={ak.reload=4},tag=Resonance] at @s run scoreboard players operation @s ak_reson.ammo = @s xmx.ammo

execute if entity @s[scores={ak.reload=..3}] at @s run title @s actionbar ["",{"translate":"mgdr.translate.ammo.reloading","color":"red"}]
execute if entity @s[scores={ak.reload=4}] at @s run title @s[tag=NonExistentTag] actionbar ["",{"translate":"mgdr.translate.ammo.loaded","color":"gold"}]
execute if entity @s[scores={ak.reload=4},tag=!switchedMag] if score @s 762.fullMag matches 1.. run function mgdr:reload/action/762mm_switch
execute if entity @s[scores={ak.reload=4}] at @s run tag @s remove gunDisabled
execute if entity @s[scores={ak.reload=3..}] at @s run tag @s remove playedReload
execute if entity @s[scores={ak.reload=5..}] at @s run tag @s remove switchedMag
execute if entity @s[scores={ak.reload=4..}] at @s run tag @s remove reloadGun
