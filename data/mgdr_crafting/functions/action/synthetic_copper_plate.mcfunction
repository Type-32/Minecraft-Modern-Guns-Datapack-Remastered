data modify storage mgdr:temp Item set value {id:"minecraft:clock",Count:1b,tag:{Tags:["synthetic_copper_plate","molded_plate"],display:{Name:'{"translate":"mgdr.item.synthetic_copper_plate","italic":false}'},CustomModelData:215102}}
execute store result score .originalOutputItemCount mgdrCrafting run data get storage mgdr:temp Item{}.Count
scoreboard players operation .outputItemCount mgdrCrafting = .originalOutputItemCount mgdrCrafting
scoreboard players operation .outputItemCount mgdrCrafting = .outputMultiplier mgdrCrafting
#execute store result storage mgdr:temp Item.Slot int 1 run scoreboard players get .bucketThresholdSlot mgdrCrafting

execute if data storage mgdr:temp outputItems[{tag:{Tags:["synthetic_copper_plate"]}}] store result score .inGridMoldedIngotCount mgdrCrafting run data get storage mgdr:temp outputItems[{tag:{Tags:["synthetic_copper_plate"]}}].Count
execute if data storage mgdr:temp outputItems[{tag:{Tags:["synthetic_copper_plate"]}}] store result score .inGridMoldedIngotSlot mgdrCrafting run data get storage mgdr:temp outputItems[{tag:{Tags:["synthetic_copper_plate"]}}].Slot
execute if data storage mgdr:temp outputItems[{tag:{Tags:["synthetic_copper_plate"]}}] run scoreboard players operation .outputItemCount mgdrCrafting += .inGridMoldedIngotCount mgdrCrafting
execute if data storage mgdr:temp outputItems[{tag:{Tags:["synthetic_copper_plate"]}}] store result storage mgdr:temp Item.Slot byte 1 run scoreboard players get .inGridMoldedIngotSlot mgdrCrafting

execute store result storage mgdr:temp Item.Count int 1 run scoreboard players get .outputItemCount mgdrCrafting

execute unless data storage mgdr:temp outputItems[{Slot:0b}] run data modify storage mgdr:temp Item.Slot set value 0b
execute unless data storage mgdr:temp outputItems[{Slot:1b}] run data modify storage mgdr:temp Item.Slot set value 1b
execute unless data storage mgdr:temp outputItems[{Slot:2b}] run data modify storage mgdr:temp Item.Slot set value 2b
execute unless data storage mgdr:temp outputItems[{Slot:3b}] run data modify storage mgdr:temp Item.Slot set value 3b
execute unless data storage mgdr:temp outputItems[{Slot:4b}] run data modify storage mgdr:temp Item.Slot set value 4b
execute unless data storage mgdr:temp outputItems[{Slot:5b}] run data modify storage mgdr:temp Item.Slot set value 5b
execute unless data storage mgdr:temp outputItems[{Slot:6b}] run data modify storage mgdr:temp Item.Slot set value 6b
execute unless data storage mgdr:temp outputItems[{Slot:7b}] run data modify storage mgdr:temp Item.Slot set value 7b
execute unless data storage mgdr:temp outputItems[{Slot:8b}] run data modify storage mgdr:temp Item.Slot set value 8b

execute unless data storage mgdr:temp outputItems[{tag:{Tags:["synthetic_copper_plate"]}}] run data modify storage mgdr:temp outputItems append from storage mgdr:temp Item
execute if data storage mgdr:temp outputItems[{tag:{Tags:["synthetic_copper_plate"]}}] store result storage mgdr:temp outputItems[{tag:{Tags:["synthetic_copper_plate"]}}].Count int 1 run scoreboard players get .outputItemCount mgdrCrafting
data modify block ~ ~ ~ Items set value []
data modify block ~ ~ ~ Items set from storage mgdr:temp outputItems