summon item ~ ~1 ~ {Tags:["grenade","init"],PortalCooldown:60,Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:202001}},PickupDelay:32627,Invulnerable:1b}
execute as @e[tag=grenade,tag=init] at @s rotated as @p run function mgdr:action/effects/launch_item
item replace entity @s[gamemode=!creative] weapon.mainhand with air
