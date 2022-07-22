# v1 : count to reduce
execute if score s0c V matches ..64 run scoreboard players operation v2 V = s0c V
execute if score s0c V matches ..64 run scoreboard players operation v2 V -= v1 V
execute if score s0c V matches ..64 store result storage mgdr:temp data.Output[{Slot:0b}].Count byte 1 run scoreboard players get v2 V
execute if score s1c V matches ..64 run scoreboard players operation v2 V = s1c V
execute if score s1c V matches ..64 run scoreboard players operation v2 V -= v1 V
execute if score s1c V matches ..64 store result storage mgdr:temp data.Output[{Slot:1b}].Count byte 1 run scoreboard players get v2 V
execute if score s2c V matches ..64 run scoreboard players operation v2 V = s2c V
execute if score s2c V matches ..64 run scoreboard players operation v2 V -= v1 V
execute if score s2c V matches ..64 store result storage mgdr:temp data.Output[{Slot:2b}].Count byte 1 run scoreboard players get v2 V