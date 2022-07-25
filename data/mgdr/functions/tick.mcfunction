#schedule function mgdr:tick 1t replace
#Code Written by Type-32
#This part is for initializing and running all the actionable & necassary functions

function mgdr:advancement_unlock
execute as @a run function mgdr:reload/reload_func/reload_group
#function mgdr:reload/reload_func/loop
function mgdr:reload/reload_func/tagging
execute if score datapackItemFunc mgdr.gamerule matches ..0 run function mgdr:use
function mgdr:det_tags/generic
#function mgdr:det_tags/guntag
function mgdr:model_enf
function mgdr:hud
function mgdr:equip_attachment
function mgdr:action/effects/aiming_sfx
#function mgdr:recipe
#function mgdr:attachments

function mgdr:init/scoreboards

execute as @a run function mgdr:clot_func/count_ammo_number
function mgdr:clot_func/attack_speed_modifier
execute as @a[tag=holdingGun] at @s run function mgdr:clot_func/hitmarkers
function mgdr:clot_func/title_actions
function mgdr:clot_func/throwables_result
function mgdr:clot_func/deployable_result
execute as @a run function mgdr:criteria

scoreboard players set @a[tag=reloadGun] showhud 1
scoreboard players set @a[tag=!reloadGun] showhud 0
execute as @a[tag=holdingGun] run function mgdr:dynammo_get
execute as @a[tag=holdingGun] run function mgdr:dynfiremode_get
execute as @a[tag=holdingGun] run function mgdr:dynindicator_get
execute as @a[tag=holdingGun] run function mgdr:dynload_get
execute as @a[tag=holdingGun] run function mgdr:dynat_get

#title @a[tag=wearingNODS] subtitle {"text": "\uEff7","color": "green"}
#execute as @a[tag=wearingNODS] if score @s whiteHit matches 11.. if score @s redHit matches 11.. run title @s title " "

execute as @a[tag=holdingGun] store result score @s xmx.ammo run data get entity @s SelectedItem.tag.AmmoXMX
execute as @a[scores={mgdr.weaponUID=2},tag=holdingGun] if score @s asval.ammo > @s xmx.ammo run scoreboard players operation @s asval.ammo = @s xmx.ammo
clear @a[scores={hands_in_inv=2..}] clock{Tags:["hand"]} 1
execute as @a unless score @s mgdr.pid matches 1.. store result score @s mgdr.pid run scoreboard players add #last mgdr.pid 1

#scoreboard players set @a[scores={plane.mode=2..}] plane.mode 0
