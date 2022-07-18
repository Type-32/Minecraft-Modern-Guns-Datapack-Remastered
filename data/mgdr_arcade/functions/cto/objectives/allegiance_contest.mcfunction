tag @s remove informContested
tag @s remove informCoalitionContest
tag @s remove informCoalitionCaptured
execute if score @s objectiveCaptureDelay matches -99..99 run tag @s remove informAllegianceCaptured
execute if score @s objectiveCaptureDelay matches -99..99 run execute if entity @s[tag=!informAllegianceContest] run tellraw @a[team=allegiance] ["",{"translate": "mgdr_arcade.gamemode.message.cto.objective","color": "aqua"},{"score":{"name": "@s","objective": "mgdr.objectiveUID"},"color": "aqua"},{"translate":"mgdr_arcade.gamemode.message.cto.being_captured_allegiance","color": "aqua"}]
execute if score @s objectiveCaptureDelay matches -99..99 run execute if entity @s[tag=!informAllegianceContest] run tellraw @a[team=coalition] ["",{"translate": "mgdr_arcade.gamemode.message.cto.objective","color": "red"},{"score":{"name": "@s","objective": "mgdr.objectiveUID"},"color": "red"},{"translate":"mgdr_arcade.gamemode.message.cto.being_captured_allegiance","color": "red"}]
tag @s add informAllegianceContest
scoreboard players remove @s[scores={objectiveCaptureDelay=-99..}] objectiveCaptureDelay 1