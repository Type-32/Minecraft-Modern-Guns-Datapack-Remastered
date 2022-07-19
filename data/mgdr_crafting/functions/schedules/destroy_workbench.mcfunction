schedule function mgdr_crafting:schedules/destroy_workbench 2s
execute as @e[tag=workbench,type=armor_stand] at @s unless block ~ ~ ~ dropper run kill @s
