schedule function mgdr_crafting:schedules/destroy_workbench 3s
execute as @e[tag=workbench,type=marker] at @s unless block ~ ~ ~ dropper run kill @s
