execute unless predicate mgdr:is_sneaking if block ~ ~ ~ air run particle dust 1 1 1 3 ^-.3 ^-.15 ^1.1 0 6 0 0.18 0 force @s[scores={tgl_particle=0}]
execute if block ~ ~ ~ water run particle bubble ^ ^-.15 ^1.1 0 0 0 .03 2 force @s[scores={tgl_particle=0}]
execute if block ~ ~ ~ air run particle flame ^ ^-.15 ^1 0 0 0 .02 1 force @s[scores={tgl_particle=0}]

playsound mgdr:sig716.fire player @a[distance=..38] ~ ~ ~ 1000
playsound mgdr:sig716.fire.bass player @a[distance=..30] ~ ~ ~ 12
playsound mgdr:sig716.fire.mech player @a[distance=..10] ~ ~ ~ 1
