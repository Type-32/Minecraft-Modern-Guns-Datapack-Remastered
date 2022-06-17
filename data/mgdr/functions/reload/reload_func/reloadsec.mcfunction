schedule function mgdr:reload/reload_func/reloadsec 1s
execute as @a[tag=holdingGun] run function mgdr:reload/reload_func/add_sec
execute as @a at @s run function mgdr:reload/reload_func/switch_cancel
