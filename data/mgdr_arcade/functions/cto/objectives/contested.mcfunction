tag @s remove informAllegianceContest
tag @s remove informCoalitionContest
tag @s remove informAllegianceCaptured
tag @s remove informCoalitionCaptured
execute if entity @s[tag=!informContested] run tellraw @a ["",{"text": "Objective ","color":"yellow","italic": true},{"score":{"name": "@s","objective": "mgdr.objectiveUID"},"color":"yellow","italic": true},{"text":" is contested!","color":"yellow","italic": true}]
tag @s add informContested