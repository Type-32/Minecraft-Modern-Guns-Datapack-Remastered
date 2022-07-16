tag @s remove informAlliegianceContest
tag @s remove informContested
#tag @s remove informCoalitionContest
tag @s remove informAlliegianceCaptured
execute if entity @s[tag=!informCoalitionCaptured] run tellraw @a[team=alliegiance] ["",{"text": "Coalition has now captured Objective ","color": "red","bold": true},{"score":{"name": "@s","objective": "mgdr.objectiveUID"},"color": "red","bold": true},{"text": "!","color": "red","bold": true}]
execute if entity @s[tag=!informCoalitionCaptured] run tellraw @a[team=coalition] ["",{"text": "Coalition has now captured Objective ","color": "aqua","bold": true},{"score":{"name": "@s","objective": "mgdr.objectiveUID"},"color": "aqua","bold": true},{"text": "!","color": "aqua","bold": true}]
tag @s add informCoalitionCaptured
particle dust 0 0 1 1 ~ ~ ~ .125 7 .125 .5 5 force