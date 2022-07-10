gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true
tag @s add tempNoFireCheck
scoreboard players set @p[tag=holdingGun,tag=!tempNoFireCheck] che.killed_plr 1
tag @s remove tempNoFireCheck
tag @p[scores={che.killed_plr=1..},limit=1] add hasKilledPlayer
function cw_hp_control:message/arcade_kills
#execute if score @a[limit=1] che.killed_plr matches 1.. run tellraw @a "af"
tag @p[tag=hasKilledPlayer,limit=1] remove hasKilledPlayer
execute if score @s mgdr.plr_death matches 1.. run scoreboard players set @s mgdr.plr_death 0
