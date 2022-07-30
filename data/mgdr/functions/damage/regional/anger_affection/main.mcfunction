data modify entity @s[type=!#mgdr:regional_affected_angered_entities] AngryAt set from entity @p[tag=PlayerDamageSource,gamemode=!creative] UUID
data modify entity @s[type=!#mgdr:regional_affected_angered_entities] AngerTime set value 1000
execute if entity @s[type=#mgdr:regional_affected_angered_entities] run function mgdr:damage/regional/anger_affection/entity/regionals
data merge entity @s {ActiveEffects:[{Id: 6b, Duration: 1, ShowParticles: 0b, Amplifier:30b},{Id: 7b, Duration: 1, ShowParticles: 0b, Amplifier:30b}]}
