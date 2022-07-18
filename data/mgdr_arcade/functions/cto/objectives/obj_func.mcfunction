execute if entity @a[distance=..5,team=allegiance] if entity @a[distance=..5,team=coalition] run function mgdr_arcade:cto/objectives/contested
execute if entity @a[distance=..5,team=allegiance] unless entity @a[distance=..5,team=coalition] run function mgdr_arcade:cto/objectives/allegiance_contest
execute unless entity @a[distance=..5,team=allegiance] if entity @a[distance=..5,team=coalition] run function mgdr_arcade:cto/objectives/coalition_contest
execute unless entity @a[distance=..5,team=allegiance] unless entity @a[distance=..5,team=coalition] run function mgdr_arcade:cto/objectives/uncontested
execute if score @s objectiveCaptureDelay matches 100.. if entity @s[tag=!informContested] at @s run function mgdr_arcade:cto/objectives/captured_by_coalition
execute if score @s objectiveCaptureDelay matches ..-100 if entity @s[tag=!informContested] at @s run function mgdr_arcade:cto/objectives/captured_by_allegiance

execute if entity @s[tag=informContested] if score .matchStarted arcadeRule matches 1 if score .gamemode arcadeRule matches 2 at @s run particle dust 1 1 0 1 ~ ~ ~ .125 7 .125 .51 5 force
execute if entity @s[tag=!informContested] if score @s objectiveCaptureDelay matches -99..99 if score .matchStarted arcadeRule matches 1 if score .gamemode arcadeRule matches 2 at @s run particle dust 1 1 1 1 ~ ~ ~ .125 7 .125 .51 5 force
