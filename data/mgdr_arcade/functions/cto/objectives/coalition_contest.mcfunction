tag @s remove informAllegianceContest
tag @s remove informContested
execute if score @s objectiveCaptureDelay matches -99..99 run tag @s remove informCoalitionCaptured
tag @s remove informAllegianceCaptured
execute if score @s objectiveCaptureDelay matches -99..99 run execute if entity @s[tag=!informCoalitionContest] run tellraw @a[team=allegiance] ["",{"translate": "mgdr_arcade.gamemode.message.cto.objective","color": "red"},{"score":{"name": "@s","objective": "mgdr.objectiveUID"},"color": "red"},{"translate":"mgdr_arcade.gamemode.message.cto.being_captured_coalition","color": "red"}]
execute if score @s objectiveCaptureDelay matches -99..99 run execute if entity @s[tag=!informCoalitionContest] run tellraw @a[team=coalition] ["",{"translate": "mgdr_arcade.gamemode.message.cto.objective","color": "aqua"},{"score":{"name": "@s","objective": "mgdr.objectiveUID"},"color": "aqua"},{"translate":"mgdr_arcade.gamemode.message.cto.being_captured_coalition","color": "aqua"}]
tag @s add informCoalitionContest
scoreboard players add @s[scores={objectiveCaptureDelay=..99}] objectiveCaptureDelay 1