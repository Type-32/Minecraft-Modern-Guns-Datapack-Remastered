#CBR27 1
#CBR27A1 2
#AK40 3
#ASVAL 4
#AUGPara 5
#CBT97 6
#Grau556 7
#SIG716 8
#CZ117 9
#MP7 10
#MP5 12
#Vec9 12
#M14 13
#CBS5 14
#M17 15
#M1911 16
item replace entity @s[scores={weaponChoice1=1}] hotbar.0 with carrot_on_a_stick{Tags:["cbr27"]}
item replace entity @s[scores={weaponChoice1=2}] hotbar.0 with carrot_on_a_stick{Tags:["cbr27a1"]}
item replace entity @s[scores={weaponChoice1=3}] hotbar.0 with carrot_on_a_stick{Tags:["ak"]}
item replace entity @s[scores={weaponChoice1=4}] hotbar.0 with carrot_on_a_stick{Tags:["asval"]}
item replace entity @s[scores={weaponChoice1=5}] hotbar.0 with carrot_on_a_stick{Tags:["augpara"]}
item replace entity @s[scores={weaponChoice1=6}] hotbar.0 with carrot_on_a_stick{Tags:["cbt97"]}
item replace entity @s[scores={weaponChoice1=7}] hotbar.0 with carrot_on_a_stick{Tags:["grau556"]}
item replace entity @s[scores={weaponChoice1=8}] hotbar.0 with carrot_on_a_stick{Tags:["sig716"]}
item replace entity @s[scores={weaponChoice1=9}] hotbar.0 with carrot_on_a_stick{Tags:["cz117"]}
item replace entity @s[scores={weaponChoice1=10}] hotbar.0 with carrot_on_a_stick{Tags:["mp7"]}
item replace entity @s[scores={weaponChoice1=11}] hotbar.0 with carrot_on_a_stick{Tags:["mp5"]}
item replace entity @s[scores={weaponChoice1=12}] hotbar.0 with carrot_on_a_stick{Tags:["vec9"]}
item replace entity @s[scores={weaponChoice1=13}] hotbar.0 with carrot_on_a_stick{Tags:["m14"]}
item replace entity @s[scores={weaponChoice1=14}] hotbar.0 with carrot_on_a_stick{Tags:["cbs5"]}
item replace entity @s[scores={weaponChoice1=15}] hotbar.0 with carrot_on_a_stick{Tags:["m17"]}
item replace entity @s[scores={weaponChoice1=16}] hotbar.0 with carrot_on_a_stick{Tags:["m1911"]}

item replace entity @s[scores={weaponChoice2=1}] hotbar.1 with carrot_on_a_stick{Tags:["cbr27"]}
item replace entity @s[scores={weaponChoice2=2}] hotbar.1 with carrot_on_a_stick{Tags:["cbr27a1"]}
item replace entity @s[scores={weaponChoice2=3}] hotbar.1 with carrot_on_a_stick{Tags:["ak"]}
item replace entity @s[scores={weaponChoice2=4}] hotbar.1 with carrot_on_a_stick{Tags:["asval"]}
item replace entity @s[scores={weaponChoice2=5}] hotbar.1 with carrot_on_a_stick{Tags:["augpara"]}
item replace entity @s[scores={weaponChoice2=6}] hotbar.1 with carrot_on_a_stick{Tags:["cbt97"]}
item replace entity @s[scores={weaponChoice2=7}] hotbar.1 with carrot_on_a_stick{Tags:["grau556"]}
item replace entity @s[scores={weaponChoice2=8}] hotbar.1 with carrot_on_a_stick{Tags:["sig716"]}
item replace entity @s[scores={weaponChoice2=9}] hotbar.1 with carrot_on_a_stick{Tags:["cz117"]}
item replace entity @s[scores={weaponChoice2=10}] hotbar.1 with carrot_on_a_stick{Tags:["mp7"]}
item replace entity @s[scores={weaponChoice2=11}] hotbar.1 with carrot_on_a_stick{Tags:["mp5"]}
item replace entity @s[scores={weaponChoice2=12}] hotbar.1 with carrot_on_a_stick{Tags:["vec9"]}
item replace entity @s[scores={weaponChoice2=13}] hotbar.1 with carrot_on_a_stick{Tags:["m14"]}
item replace entity @s[scores={weaponChoice2=14}] hotbar.1 with carrot_on_a_stick{Tags:["cbs5"]}
item replace entity @s[scores={weaponChoice2=15}] hotbar.1 with carrot_on_a_stick{Tags:["m17"]}
item replace entity @s[scores={weaponChoice2=16}] hotbar.1 with carrot_on_a_stick{Tags:["m1911"]}

item replace entity @s hotbar.2 with iron_sword{Unbreakable:1b,Enchantments:[{id:"sharpness",lvl:8}]}

item replace entity @s[scores={equipmentChoice1=1}] hotbar.3 with minecraft:carrot_on_a_stick{Tags:["grenade","throwable"],CustomModelData:202001,display:{Name:'{"translate":"mgdr.item.throwables.grenade","italic":false}'}}
item replace entity @s[scores={equipmentChoice1=2}] hotbar.3 with minecraft:carrot_on_a_stick{Tags:["flashbang","throwable"],CustomModelData:202002,display:{Name:'{"translate":"mgdr.item.throwables.flashbang","italic":false}'}}
item replace entity @s[scores={equipmentChoice1=3}] hotbar.3 with carrot_on_a_stick{CustomModelData:202006,display:{Name:'{"translate":"mgdr.item.deployables.landmine","color": "yellow","italic": false}'},Tags:["landmine"]}
item replace entity @s[scores={equipmentChoice1=4}] armor.chest with iron_chestplate{Tags:["combat_master_vest"],display:{Name:'{"text":"Combat Master Vest","color": "yellow","italic": false}'}}

item replace entity @s[scores={equipmentChoice2=1}] hotbar.4 with minecraft:carrot_on_a_stick{Tags:["grenade","throwable"],CustomModelData:202001,display:{Name:'{"translate":"mgdr.item.throwables.grenade","italic":false}'}}
item replace entity @s[scores={equipmentChoice2=2}] hotbar.4 with minecraft:carrot_on_a_stick{Tags:["flashbang","throwable"],CustomModelData:202002,display:{Name:'{"translate":"mgdr.item.throwables.flashbang","italic":false}'}}
item replace entity @s[scores={equipmentChoice2=3}] hotbar.4 with carrot_on_a_stick{CustomModelData:202006,display:{Name:'{"translate":"mgdr.item.deployables.landmine","color": "yellow","italic": false}'},Tags:["landmine"]}
item replace entity @s[scores={equipmentChoice2=4}] armor.chest with iron_chestplate{Tags:["combat_master_vest"],display:{Name:'{"text":"Combat Master Vest","color": "yellow","italic": false}'}}

scoreboard players set @s ak.ammo 30
scoreboard players set @s asval.ammo 20
scoreboard players set @s cbr27.ammo 30
scoreboard players set @s cbr27a1.ammo 40
scoreboard players set @s cbt97.ammo 40
scoreboard players set @s grau.ammo 30
scoreboard players set @s sig716.ammo 30
scoreboard players set @s cz117.ammo 35
scoreboard players set @s augpara.ammo 30
scoreboard players set @s vec9.ammo 40
scoreboard players set @s mp7.ammo 30
scoreboard players set @s mp5.ammo 30
scoreboard players set @s m14.ammo 10
scoreboard players set @s cbs5.ammo 6
scoreboard players set @s m17.ammo 15
scoreboard players set @s m1911.ammo 8

give @s clock{CustomModelData:212103,Tags:["full","9mm Mag"],display:{Name:'{"translate":"mgdr.mag.full.009mm_mag","italic":false}'}} 64
give @s clock{CustomModelData:212105,Tags:["full","4.5mm Mag"],display:{Name:'{"translate":"mgdr.mag.full.045mm_mag","italic":false}'}} 64
give @s clock{CustomModelData:212102,Tags:["full","5.56mm Mag"],display:{Name:'{"translate":"mgdr.mag.full.556mm_mag","italic":false}'}} 64
give @s clock{CustomModelData:212101,Tags:["full","7.62mm Mag"],display:{Name:'{"translate":"mgdr.mag.full.762mm_mag","italic":false}'}} 64
