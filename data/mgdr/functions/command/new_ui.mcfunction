scoreboard players add @a new_ui 0
scoreboard players enable @a new_ui 
scoreboard players set @a[scores={new_ui=2..}] new_ui 0
tellraw @a[scores={new_ui=0},tag=!new_ui_inf] {"text": "New UI is disabled!","color": "red"}
tag @a[scores={new_ui=0},tag=!new_ui_inf] add new_ui_inf
tellraw @a[scores={new_ui=1},tag=new_ui_inf] {"text": "New UI is Enabled!","color": "green"}
tag @a[scores={new_ui=1},tag=new_ui_inf] remove new_ui_inf
