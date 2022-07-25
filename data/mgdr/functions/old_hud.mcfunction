execute if score @s dyn.at matches 1 run function mgdr:ammohud/old/standard_rounds
execute if score @s dyn.at matches 2 run function mgdr:ammohud/old/ap_rounds
execute if score @s dyn.at matches 3 run function mgdr:ammohud/old/hp_rounds
execute if score @s dyn.at matches 4 run function mgdr:ammohud/old/fmj_rounds
execute if score @s dyn.at matches 5 run function mgdr:ammohud/old/nato_rounds
execute if score @s dyn.at matches 6 run function mgdr:ammohud/old/gzh_rounds
title @s[scores={dyn.indicator=1,dyn.load=0},tag=!reloadGun] actionbar ["",{"score":{"name": "@s","objective": "dyn.ammo"},"color": "dark_aqua","bold": true},{"text": " | ","color": "gray"},{"text": "\uEfe0","color": "white"}]
title @s[scores={dyn.indicator=1,dyn.load=1},tag=!reloadGun] actionbar ["",{"score":{"name": "@s","objective": "dyn.ammo"},"color": "dark_aqua","bold": true},{"text": " | ","color": "gray"},{"text": "\uEfe0","color": "dark_gray"}]
title @s[tag=reloadGun] actionbar ["",{"translate":"mgdr.translate.ammo.reloading","color": "red","italic": false,"bold": true}]
title @s[scores={dyn.ammo=..0},tag=!reloadGun] actionbar ["",{"translate":"mgdr.translate.ammo.requires_reload","color": "yellow","italic": false,"bold": true}]
