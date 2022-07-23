data modify storage mgdr:temp Item set value {id:"minecraft:clock",Count:1b,tag:{Tags:["ingot_mold","mold"],display:{Name:'{"translate":"mgdr.item.ingot_mold","italic":false}'},CustomModelData:213001}}
execute unless data storage mgdr:temp data.Items[{Slot:4b}] run data modify storage mgdr:temp Item.Slot set value 4b
execute store result score .originalOutputItemCount mgdrCrafting run data get storage mgdr:temp Item{}.Count
scoreboard players operation .outputItemCount mgdrCrafting = .originalOutputItemCount mgdrCrafting
scoreboard players operation .outputItemCount mgdrCrafting *= .outputMultiplier mgdrCrafting
execute store result storage mgdr:temp Item.Count int 1 run scoreboard players get .outputItemCount mgdrCrafting
#data modify storage mgdr:temp Item.Count set value 3b
data modify block ~ ~ ~ Items set value []
data modify block ~ ~ ~ Items append from storage mgdr:temp Item