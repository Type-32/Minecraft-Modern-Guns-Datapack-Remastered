
#scoreboard players operation .vest_temp mgdr.gamerule -= .weapon_damage_temp mgdr.gamerule
#execute store result storage mgdr:temp_weapon data.armorItem.tag.DefenseValue int 1 run scoreboard players get .vest_temp mgdr.gamerule
#data modify storage mgdr:temp_weapon data.armorItem.Slot set value 20b
#data modify block 0 -64 0 Items[] append from storage mgdr:temp_weapon data.armorItem