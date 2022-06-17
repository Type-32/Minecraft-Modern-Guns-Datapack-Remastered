title @s[scores={045.fullMag=1..,m1911.ammo=1..}] actionbar ["",{"score":{"name": "@s","objective": "m1911.ammo"},"color": "dark_aqua","extra":[{"translate":"mgdr.translate.ammo.rounds"}]},{"text":" | "},{"score":{"name": "@s","objective": "045.fullMag"},"color": "gray","extra":[{"translate": "mgdr.translate.ammo.045.mags_left"}]}]
#title @s[scores={045.fullMag=1..}] actionbar ["",{"score":{"name": "@s","objective": "m1911.ammo"},"color": "dark_aqua","extra":[{"translate":"mgdr.translate.ammo.rounds"}]},{"text":" | "},{"score":{"name": "@s","objective": "045.fullMag"},"color": "gray","extra":[{"translate": "mgdr.translate.ammo.045.mags_left"}]}]

title @s[scores={045.fullMag=0,m1911.ammo=1..}] actionbar ["",{"score":{"name": "@s","objective": "m1911.ammo"},"color": "dark_aqua","extra":[{"translate":"mgdr.translate.ammo.rounds"}]},{"text":" | "},{"color": "red","translate": "mgdr.translate.ammo.no_045mag"}]
#title @s[scores={045.fullMag=0}] actionbar ["",{"score":{"name": "@s","objective": "m1911.ammo"},"color": "dark_aqua","extra":[{"translate":"mgdr.translate.ammo.rounds"}]},{"text":" | "},{"color": "red","translate": "mgdr.translate.ammo.no_045mag"}]

title @s[scores={m1911.ammo=0}] actionbar ["",{"translate":"mgdr.reload.message","color": "yellow"},{"text":" | ","color":"dark_gray"},{"translate":"mgdr.mag.need.045mm_mag","color": "gold"}]
#,m1911.ammo=1..