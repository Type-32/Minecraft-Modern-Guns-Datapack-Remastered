tag @s remove informAlliegianceContest
tag @s remove informContested
execute if score @s objectiveCaptureDelay matches -99..99 run tag @s remove informCoalitionCaptured
tag @s remove informAlliegianceCaptured
execute if score @s objectiveCaptureDelay matches -99..99 run execute if entity @s[tag=!informCoalitionContest] run tellraw @a[team=alliegiance] ["",{"text": "Objective ","color": "red"},{"score":{"name": "@s","objective": "mgdr.objectiveUID"},"color": "red"},{"text":" is being captured by Coalition!","color": "red"}]
execute if score @s objectiveCaptureDelay matches -99..99 run execute if entity @s[tag=!informCoalitionContest] run tellraw @a[team=coalition] ["",{"text": "Objective ","color": "aqua"},{"score":{"name": "@s","objective": "mgdr.objectiveUID"},"color": "aqua"},{"text":" is being captured by Coalition!","color": "aqua"}]
tag @s add informCoalitionContest
scoreboard players add @s[scores={objectiveCaptureDelay=..99}] objectiveCaptureDelay 1