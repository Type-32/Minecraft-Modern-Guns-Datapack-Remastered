#schedule function mgdr:use 1t replace
#Code Written by Type-32
#This part is for detecting if the player has right clicked while holding a specific gun
scoreboard objectives add usedCarrotPol minecraft.used:minecraft.carrot_on_a_stick
scoreboard players add @a usedCarrotPol 0
scoreboard objectives add fireDelay dummy
scoreboard objectives add fireDisplace dummy
scoreboard objectives add flashDelay dummy
scoreboard players add @a fireDisplace 0
scoreboard players add @a fireDelay 0
scoreboard players add @a[tag=holdingGun,scores={fireDelay=..200}] fireDelay 1
scoreboard players add @a[tag=holdingGun] flashDelay 1

execute as @a at @s run function mgdr:use_clot

execute as @a[tag=holdingGun,predicate=mgdr:is_sneaking,scores={aimSec=..1,aiming_fire=0}] run function mgdr:action/effects/aim_down_sights

##Auto Reload
#function mgdr:command/func/auto_reload_action

#execute as @e[tag=shellInit,tag=bullet_shell,type=item] at @s rotated as @p run function mgdr:action/apply_shell_motion
## Reset scoreboard

scoreboard players set @a usedCarrotPol 0
