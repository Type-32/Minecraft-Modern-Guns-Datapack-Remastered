function mgdr_crafting:schedules/craft_workbench
function mgdr_crafting:recipe/opt/as_workbench
function mgdr_crafting:schedules/destroy_workbench

scoreboard objectives add mgdrCrafting dummy
scoreboard players add .succeedIndicator mgdrCrafting 0
scoreboard objectives add mgdr.used_armor_stand minecraft.used:minecraft.armor_stand