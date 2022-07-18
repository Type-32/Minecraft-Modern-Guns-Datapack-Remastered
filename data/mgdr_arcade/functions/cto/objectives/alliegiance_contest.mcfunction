tag @s remove informContested
tag @s remove informCoalitionContest
tag @s remove informCoalitionCaptured
execute if score @s objectiveCaptureDelay matches -99..99 run tag @s remove informAllegianceCaptured
execute if score @s objectiveCaptureDelay matches -99..99 run execute if entity @s[tag=!informAllegianceContest] run tellraw @a[team=allegiance] ["",{"text": "Objective ","color": "aqua"},{"score":{"name": "@s","objective": "mgdr.objectiveUID"},"color": "aqua"},{"text":" is being captured by Allegiance!","color": "aqua"}]
execute if score @s objectiveCaptureDelay matches -99..99 run execute if entity @s[tag=!informAllegianceContest] run tellraw @a[team=coalition] ["",{"text": "Objective ","color": "red"},{"score":{"name": "@s","objective": "mgdr.objectiveUID"},"color": "red"},{"text":" is being captured by Allegiance!","color": "red"}]
tag @s add informAllegianceContest
scoreboard players remove @s[scores={objectiveCaptureDelay=-99..}] objectiveCaptureDelay 1