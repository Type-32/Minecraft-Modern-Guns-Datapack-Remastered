execute if entity @s[predicate=!mgdr:is_sneaking] if block ~ ~ ~ air run particle dust 1 1 1 3 ^-.3 ^-.15 ^1.1 0 6 0 0.18 0 force @s[scores={tgl_particle=0}]
execute if block ~ ~ ~ water run particle bubble ^ ^-.15 ^1.1 0 0 0 .03 2 force @s[scores={tgl_particle=0}]
execute if block ~ ~ ~ air run particle flame ^ ^-.15 ^1 0 0 0 .02 1 force @s[scores={tgl_particle=0}]

playsound mgdr:cbr27.fire.mech block @a[distance=..5,tag=!haveSupressor] ~ ~ ~ 100
playsound mgdr:cbr27.fire block @a[distance=..38,tag=!haveSupressor] ~ ~ ~ 100
#execute unless blocks ~-3 ~ ~ ~3 ~ ~ ~ ~ ~ masked unless blocks ~ ~ ~3 ~ ~ ~-3 ~ ~ ~ masked if block ~ ~1 ~ #mgdr:airs run playsound mgdr:cbr27.fire.atmo block @a[distance=..70,tag=!haveSupressor] ~ ~1000 ~ 200

playsound mgdr:cbr27.sup_fire block @a[distance=..16,tag=haveSupressor] ~ ~ ~ 5
playsound mgdr:cbr27.sup_fire.mech block @a[distance=..5,tag=haveSupressor] ~ ~ ~ 5

playsound mgdr:cbr27.fire.dry block @a[distance=..10,scores={cbr27.ammo=..5}] ~ ~ ~ 100
playsound mgdr:others.empty voice @s[distance=..10,scores={cbr27.ammo=..1}] ~ ~100 ~ 100