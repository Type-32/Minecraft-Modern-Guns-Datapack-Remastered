tag @s remove informAlliegianceContest
tag @s remove informContested
tag @s remove informCoalitionContest
tag @s remove informCoalitionCaptured
execute if entity @s[tag=!informAlliegianceCaptured] run tellraw @a[team=alliegiance] ["",{"text": "Alliegiance has now captured Objective ","color": "aqua","bold": true},{"score":{"name": "@s","objective": "mgdr.objectiveUID"},"color": "aqua","bold": true},{"text": "!","color": "aqua","bold": true}]
execute if entity @s[tag=!informAlliegianceCaptured] run tellraw @a[team=coalition] ["",{"text": "Alliegiance has now captured Objective ","color": "red","bold": true},{"score":{"name": "@s","objective": "mgdr.objectiveUID"},"color": "red","bold": true},{"text": "!","color": "red","bold": true}]
tag @s add informAlliegianceCaptured
particle dust 1 0 0 1 ~ ~ ~ .125 7 .125 .5 5 force