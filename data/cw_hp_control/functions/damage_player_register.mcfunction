gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true
tag @s add tempNoFireCheck
scoreboard players add @a[tag=holdingGun,tag=!tempNoFireCheck] che.killed_plr 1
tag @s remove tempNoFireCheck
