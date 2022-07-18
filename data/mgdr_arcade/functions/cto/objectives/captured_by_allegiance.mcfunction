tag @s remove informAllegianceContest
tag @s remove informContested
tag @s remove informCoalitionContest
tag @s remove informCoalitionCaptured
execute if entity @s[tag=!informAllegianceCaptured] run tellraw @a[team=allegiance] ["",{"translate": "mgdr_arcade.gamemode.message.cto.allegiance_has_captured","color": "aqua","bold": true},{"score":{"name": "@s","objective": "mgdr.objectiveUID"},"color": "aqua","bold": true},{"text": "!","color": "aqua","bold": true}]
execute if entity @s[tag=!informAllegianceCaptured] run tellraw @a[team=coalition] ["",{"translate": "mgdr_arcade.gamemode.message.cto.allegiance_has_captured","color": "red","bold": true},{"score":{"name": "@s","objective": "mgdr.objectiveUID"},"color": "red","bold": true},{"text": "!","color": "red","bold": true}]
tag @s add informAllegianceCaptured
particle dust 1 0 0 1 ~ ~ ~ .125 7 .125 .5 5 force