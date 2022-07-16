schedule function mgdr_arcade:schedules/objective_init 3t
scoreboard players add @e[tag=ObjectivePoint,tag=ArcadeAsset,type=armor_stand] objectiveCaptureDelay 0
execute as @e[tag=ArcadeAsset,tag=ObjectivePoint,type=armor_stand] unless score @s mgdr.objectiveUID matches 1.. store result score @s mgdr.objectiveUID run scoreboard players add #last mgdr.objectiveUID 1
execute unless entity @e[tag=ArcadeAsset,tag=ObjectivePoint,type=armor_stand] run scoreboard players set #last mgdr.objectiveUID 0
