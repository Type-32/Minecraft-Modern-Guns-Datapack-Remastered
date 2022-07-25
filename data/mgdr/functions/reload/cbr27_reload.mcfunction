function mgdr:reload/at_reload_check/cbr27
execute if entity @s[scores={cbr27.reload=0}] at @s run function mgdr:reload/reload_init/init_func
execute if entity @s[scores={cbr27.reload=4}] at @s run scoreboard players operation @s cbr27.ammo = @s xmx.ammo
execute if entity @s[scores={cbr27.reload=..3}] run title @s[scores={new_ui=1}] actionbar ["",{"text":"\uEff8\uEff9","color": "red"}]
execute if entity @s[scores={cbr27.reload=4}] run title @s[tag=NonExistentTag] actionbar ["",{"translate":"mgdr.translate.ammo.loaded","color":"gold"}]
#execute if entity @s[scores={cbr27.reload=4}] run tag @s add switchedMag
execute if entity @s[scores={cbr27.reload=4}] run tag @s remove gunDisabled
execute if entity @s[scores={cbr27.reload=3..}] run tag @s remove playedReload
execute if entity @s[scores={cbr27.reload=5..}] run tag @s remove switchedMag
execute if entity @s[scores={cbr27.reload=4..}] run tag @s remove reloadGun
