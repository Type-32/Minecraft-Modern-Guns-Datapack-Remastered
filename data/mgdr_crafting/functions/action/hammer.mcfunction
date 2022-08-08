data modify storage mgdr:temp Item set value {id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Tags:["hammer"],display:{Name:'{"translate":"mgdr.item.hammer","italic":false}'},CustomModelData:212223,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:9,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122631,5055,152528,-10110]},{AttributeName:"generic.attack_speed",Amount:-3.2,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;-122631,5155,152528,-10310]}]}}
data modify storage mgdr:temp Item.Slot set value 4b
data modify storage mgdr:temp outputItems set from storage mgdr:temp Item
data modify block ~ ~ ~ Items set value []
data modify block ~ ~ ~ Items[] set from storage mgdr:temp outputItems
