schedule function mgdr:equipment_effects 2t replace
effect give @a[tag=wearingNODS] night_vision 15 255 true

effect clear @a[tag=!wearingNODS,scores={togglesafe=1..}] night_vision
#title @a[tag=wearingNODS,scores={togglesafe=1..}] times 20 50 20
scoreboard players set @a[tag=!wearingNODS,scores={togglesafe=1..}] togglesafe 0
#title @a[tag=wearingNODS,scores={togglesafe=0}] times 0 10 0
scoreboard players set @a[tag=wearingNODS,scores={togglesafe=0}] togglesafe 1
