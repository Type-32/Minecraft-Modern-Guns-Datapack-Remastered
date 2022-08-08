data remove storage mgdr:temp data
data modify storage mgdr:temp data.Items set from block ~ ~ ~ Items
data modify storage mgdr:temp data.Output set from storage mgdr:temp data.Items
function mgdr_crafting:recipe/crafting_tags
function mgdr_crafting:recipe/crafting_precompute
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/crafting_precompute
execute store result score .slot0count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:0b}].Count
execute store result score .slot1count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:1b}].Count
execute store result score .slot2count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:2b}].Count
execute store result score .slot3count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:3b}].Count
execute store result score .slot4count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:4b}].Count
execute store result score .slot5count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:5b}].Count
execute store result score .slot6count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:6b}].Count
execute store result score .slot7count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:7b}].Count
execute store result score .slot8count mgdrCrafting run data get storage mgdr:temp data.Items[{Slot:8b}].Count

scoreboard players set .succeedIndicator mgdrCrafting 0

execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/gun/cbr27
execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/gun/mp7

execute if score .succeedIndicator mgdrCrafting matches 0 if score .usedSlots mgdrCrafting matches 9 run function mgdr_crafting:recipe/materials/copper_plate
execute if score .succeedIndicator mgdrCrafting matches 0 if score .usedSlots mgdrCrafting matches 9 run function mgdr_crafting:recipe/materials/iron_plate
execute if score .succeedIndicator mgdrCrafting matches 0 if score .usedSlots mgdrCrafting matches 5 run function mgdr_crafting:recipe/materials/hammer
execute if score .succeedIndicator mgdrCrafting matches 0 if score .usedSlots mgdrCrafting matches 2..3 run function mgdr_crafting:recipe/materials/synthetic_iron_plate
#execute if score .succeedIndicator mgdrCrafting matches 0 if score .usedSlots mgdrCrafting matches 2..3 run function mgdr_crafting:recipe/materials/synthetic_copper_plate
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/materials/steel_grip
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/materials/steel_hull
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/materials/steel_stock
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/materials/steel_barrel
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/materials/steel_uppercover
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/materials/iron_pole
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/materials/hatch_piece
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/materials/stock_connector
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/materials/gun_barrel
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/materials/copper_cord
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/materials/optic_fiber_lens
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/materials/optic_chip
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/materials/optic_battery
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/materials/optic_led
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/materials/rmr_sight
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/materials/holosight
#execute if score .succeedIndicator mgdrCrafting matches 0 run function mgdr_crafting:recipe/materials/ranger_foregrip

execute if score .succeedIndicator mgdrCrafting matches 0 if score .usedSlots mgdrCrafting matches 9 run function mgdr_crafting:recipe/materials/molds/ingot_mold

execute if block ~ ~-1 ~ #mgdr_crafting:heat_source run function mgdr_crafting:recipe/materials/molten_liquids

execute if score .succeedIndicator mgdrCrafting matches 0 if score .usedSlots mgdrCrafting matches 2..3 run function mgdr_crafting:recipe/materials/molding/synthetic_iron_ingot
execute if score .succeedIndicator mgdrCrafting matches 0 if score .usedSlots mgdrCrafting matches 2..3 run function mgdr_crafting:recipe/materials/molding/synthetic_copper_ingot

execute if score .succeedIndicator mgdrCrafting matches 1 run playsound block.anvil.use block @a ~ ~ ~ 1
execute if score .succeedIndicator mgdrCrafting matches 2 run playsound block.grindstone.use block @a ~ ~ ~ 1
execute if score .succeedIndicator mgdrCrafting matches 3 run playsound item.bucket.fill_lava block @a ~ ~ ~ 1
execute if score .succeedIndicator mgdrCrafting matches 4 run playsound item.bucket.empty_lava block @a ~ ~ ~ 1 0
execute if score .succeedIndicator mgdrCrafting matches 5 run playsound block.smithing_table.use block @a ~ ~ ~ 1
