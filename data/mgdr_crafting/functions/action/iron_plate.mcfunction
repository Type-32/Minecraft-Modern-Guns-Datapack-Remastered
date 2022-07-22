data modify storage mgdr:temp Item set value {id:"minecraft:clock",Count:3b,tag:{Tags:["iron_plate"],display:{Name:'{"translate":"mgdr.item.iron_plate","italic":false}'},CustomModelData:212202}}
data modify storage mgdr:temp Item.Slot set value 4b
execute store result score .originalOutputItemCount mgdrCrafting run data get storage mgdr:temp Item{}.Count
scoreboard players operation .outputItemCount mgdrCrafting = .originalOutputItemCount mgdrCrafting
scoreboard players operation .outputItemCount mgdrCrafting *= .outputMultiplier mgdrCrafting
execute store result storage mgdr:temp Item.Count int 1 run scoreboard players get .outputItemCount mgdrCrafting
#data modify storage mgdr:temp Item.Count set value 3b
data modify block ~ ~ ~ Items set value []
data modify block ~ ~ ~ Items append from storage mgdr:temp Item