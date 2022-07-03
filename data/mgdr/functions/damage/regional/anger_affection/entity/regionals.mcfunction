execute if entity @s[type=villager] at @s run execute as @e[type=iron_golem,distance=..20] run data modify entity @s AngryAt set from entity @p[tag=firingMarkerDetect,gamemode=!creative] UUID
data modify entity @s[type=villager] Gossips[{}].Target set from entity @p[tag=firingMarkerDetect,gamemode=!creative] UUID
data modify entity @s[type=villager] Gossips[{}].Value set value 100
data modify entity @s[type=villager] Gossips[{}].Type set value "major_negative"

data modify entity @s[type=iron_golem] AngryAt set from entity @p[tag=firingMarkerDetect,gamemode=!creative] UUID

data modify entity @s[type=wolf] AngryAt set from entity @p[tag=firingMarkerDetect,gamemode=!creative] UUID

data modify entity @s[type=zombified_piglin] AngryAt set from entity @p[tag=firingMarkerDetect,gamemode=!creative] UUID

data modify entity @s[type=skeleton] AngryAt set from entity @p[tag=firingMarkerDetect,gamemode=!creative] UUID

execute if entity @s[type=polar_bear] at @s run execute as @e[type=polar_bear,distance=..5] run data modify entity @s AngryAt set from entity @p[tag=firingMarkerDetect,gamemode=!creative] UUID
data modify entity @s[type=polar_bear] AngryAt set from entity @p[tag=firingMarkerDetect,gamemode=!creative] UUID

execute if entity @s[type=bee] at @s run execute as @e[type=bee,distance=..5] run data modify entity @s AngryAt set from entity @p[tag=firingMarkerDetect,gamemode=!creative] UUID
data modify entity @s[type=bee] AngryAt set from entity @p[tag=firingMarkerDetect,gamemode=!creative] UUID

execute if entity @s[type=warden] at @s run execute as @e[type=warden,distance=..5] run data modify entity @s anger.suspects[{}].uuid set from entity @p[tag=firingMarkerDetect,gamemode=!creative] UUID
data modify entity @s[type=warden] anger.suspects[{}].uuid set from entity @p[tag=firingMarkerDetect,gamemode=!creative] UUID
