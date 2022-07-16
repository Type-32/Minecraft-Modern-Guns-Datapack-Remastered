title @s title ""
execute if entity @s[scores={deathTimer=100}] run title @s subtitle {"text":"You Will Respawn in 5 seconds...","color": "yellow"}
execute if entity @s[scores={deathTimer=100}] run playsound block.note_block.pling player @s ~ ~100000 ~ 10000000
execute if entity @s[scores={deathTimer=80}] run title @s subtitle {"text":"You Will Respawn in 4 seconds...","color": "yellow"}
execute if entity @s[scores={deathTimer=80}] run playsound block.note_block.pling player @s ~ ~100000 ~ 10000000
execute if entity @s[scores={deathTimer=60}] run title @s subtitle {"text":"You Will Respawn in 3 seconds...","color": "yellow"}
execute if entity @s[scores={deathTimer=60}] run playsound block.note_block.pling player @s ~ ~100000 ~ 10000000
execute if entity @s[scores={deathTimer=40}] run title @s subtitle {"text":"You Will Respawn in 2 seconds...","color": "yellow"}
execute if entity @s[scores={deathTimer=40}] run playsound block.note_block.pling player @s ~ ~100000 ~ 10000000
execute if entity @s[scores={deathTimer=20}] run title @s subtitle {"text":"You Will Respawn in 1 second...","color": "yellow"}
execute if entity @s[scores={deathTimer=20}] run playsound block.note_block.pling player @s ~ ~100000 ~ 10000000
