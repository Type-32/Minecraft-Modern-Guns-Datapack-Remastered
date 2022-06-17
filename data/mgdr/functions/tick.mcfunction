#Code Written by Type-32
#This part is for initializing and running all the actionable & necassary functions
function mgdr:criteria
function mgdr:advancement_unlock
function mgdr:reload/reload_func/reload_group
#function mgdr:reload/reload_func/loop
function mgdr:reload/reload_func/tagging
execute if score datapackItemFunc gamerule matches ..0 run function mgdr:use
function mgdr:det_tags/generic
function mgdr:model_enf
function mgdr:hud
function mgdr:equip_attachment
function mgdr:action/effects/aiming_sfx
#function mgdr:recipe
#function mgdr:attachments
function mgdr:command/loop

function mgdr:init/scoreboards

function mgdr:clot_func/count_ammo_number
function mgdr:clot_func/attack_speed_modifier
function mgdr:clot_func/hitmarkers
function mgdr:clot_func/title_actions
function mgdr:clot_func/throwables_result

clear @a[scores={hands_in_inv=2..}] clock{Tags:["hand"]} 1
execute as @a unless score @s mgdr.pid matches 1.. store result score @s mgdr.pid run scoreboard players add #last mgdr.pid 1

#scoreboard players set @a[scores={plane.mode=2..}] plane.mode 0
