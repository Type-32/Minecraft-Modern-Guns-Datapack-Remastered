schedule function mgdr:equipment_effects 1s replace
effect give @a[tag=wearingNODS] night_vision 15 255 true

effect clear @a[tag=!wearingNODS,scores={togglesafe=1..}] night_vision
scoreboard players set @a[tag=!wearingNODS,scores={togglesafe=1..}] togglesafe 0
scoreboard players set @a[tag=wearingNODS,scores={togglesafe=0}] togglesafe 1
