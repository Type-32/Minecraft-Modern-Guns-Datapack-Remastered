execute unless predicate mgdr:is_sneaking if block ~ ~ ~ air run particle dust 1 1 1 3 ^-.3 ^-.15 ^1.1 0 6 0 0.18 0 force @s[scores={tgl_particle=0}]
execute if block ~ ~ ~ water run particle bubble ^ ^-.15 ^1.1 0 0 0 .03 2 force @s[scores={tgl_particle=0}]
execute if block ~ ~ ~ air run particle flame ^ ^-.15 ^1 0 0 0 .02 1 force @s[scores={tgl_particle=0}]

playsound mgdr:grau556.fire player @a[distance=..40,scores={grau.ammo=6..}] ~ ~ ~ 1000
playsound mgdr:grau556.fire.mech player @a[distance=..5] ~ ~ ~ 0.7
playsound mgdr:grau556.fire.dry player @a[distance=..40,scores={grau.ammo=..5}] ~ ~ ~ 1000

