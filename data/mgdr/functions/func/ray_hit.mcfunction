particle minecraft:crit ~ ~ ~ .01 .01 .01 1.8 5 force
execute unless block ~ ~ ~ #mgdr:bullet_impact/glass unless block ~ ~ ~ #mgdr:bullet_impact/water unless block ~ ~ ~ #mgdr:bullet_impact/cloth unless block ~ ~ ~ #mgdr:bullet_impact/dirt unless block ~ ~ ~ #mgdr:bullet_impact/mud unless block ~ ~ ~ #mgdr:bullet_impact/wood run playsound mgdr:others.solid_bullet_impact block @a ~ ~ ~ 0.6
execute if block ~ ~ ~ #mgdr:bullet_impact/glass run playsound minecraft:block.glass.break block @a ~ ~ ~ 1
execute if block ~ ~ ~ #mgdr:bullet_impact/water run playsound minecraft:ambient.underwater.exit block @a ~ ~ ~ 1 1.5
execute if block ~ ~ ~ #mgdr:bullet_impact/cloth run playsound mgdr:others.cloth_bullet_impact block @a ~ ~ ~ 1
execute if block ~ ~ ~ #mgdr:bullet_impact/dirt run playsound mgdr:others.dirt_bullet_impact block @a ~ ~ ~ 1
execute if block ~ ~ ~ #mgdr:bullet_impact/mud run playsound mgdr:others.mud_bullet_impact block @a ~ ~ ~ 1
execute if block ~ ~ ~ #mgdr:bullet_impact/wood run playsound mgdr:others.wood_bullet_impact block @a ~ ~ ~ 1
#playsound mgdr:others.soft_bullet_impact block @a ~ ~ ~ 1