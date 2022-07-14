gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true
tag @s add tempNoFireCheck
execute as @a if score /player.lastFiredUID gamerule = @s mgdr.pid run scoreboard players set @s[tag=holdingGun] che.killed_plr 1
execute as @a if score /player.lastFiredUID gamerule = @s mgdr.pid run scoreboard players set @s[tag=holdingCBMKnife,tag=!holdingGun] che.killed_plr 1
tag @s remove tempNoFireCheck
tag @a[scores={che.killed_plr=1..}] add hasKilledPlayer
function cw_hp_control:message/arcade_kills
#execute if score @a[limit=1] che.killed_plr matches 1.. run tellraw @a "af"
tag @a[tag=hasKilledPlayer] remove hasKilledPlayer
execute if score @s mgdr.plr_death matches 1.. run scoreboard players set @s mgdr.plr_death 0
