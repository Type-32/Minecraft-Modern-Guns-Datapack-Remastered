execute store result score @s 762mag.standard run clear @s clock{Tags:["full","7.62mm Mag"],AmmoType:1b} 0
execute store result score @s 556mag.standard run clear @s clock{Tags:["full","5.56mm Mag"],AmmoType:1b} 0
execute store result score @s 009mag.standard run clear @s clock{Tags:["full","9mm Mag"],AmmoType:1b} 0
execute store result score @s 045mag.standard run clear @s clock{Tags:["full","4.5mm Mag"],AmmoType:1b} 0
execute store result score @s 12mmGmag.standard run clear @s clock{Tags:["full","12mm Guages Mag"],AmmoType:1b} 0

execute store result score @s 762mag.ap run clear @s clock{Tags:["full","7.62mm Mag"],AmmoType:2b} 0
execute store result score @s 556mag.ap run clear @s clock{Tags:["full","5.56mm Mag"],AmmoType:2b} 0
execute store result score @s 009mag.ap run clear @s clock{Tags:["full","9mm Mag"],AmmoType:2b} 0
execute store result score @s 045mag.ap run clear @s clock{Tags:["full","4.5mm Mag"],AmmoType:2b} 0
execute store result score @s 12mmGmag.ap run clear @s clock{Tags:["full","12mm Guages Mag"],AmmoType:2b} 0

execute store result score @s 762mag.hp run clear @s clock{Tags:["full","7.62mm Mag"],AmmoType:3b} 0
execute store result score @s 556mag.hp run clear @s clock{Tags:["full","5.56mm Mag"],AmmoType:3b} 0
execute store result score @s 009mag.hp run clear @s clock{Tags:["full","9mm Mag"],AmmoType:3b} 0
execute store result score @s 045mag.hp run clear @s clock{Tags:["full","4.5mm Mag"],AmmoType:3b} 0
execute store result score @s 12mmGmag.hp run clear @s clock{Tags:["full","12mm Guages Mag"],AmmoType:3b} 0

execute store result score @s 762mag.fmj run clear @s clock{Tags:["full","7.62mm Mag"],AmmoType:4b} 0
execute store result score @s 556mag.fmj run clear @s clock{Tags:["full","5.56mm Mag"],AmmoType:4b} 0
execute store result score @s 009mag.fmj run clear @s clock{Tags:["full","9mm Mag"],AmmoType:4b} 0
execute store result score @s 045mag.fmj run clear @s clock{Tags:["full","4.5mm Mag"],AmmoType:4b} 0
execute store result score @s 12mmGmag.fmj run clear @s clock{Tags:["full","12mm Guages Mag"],AmmoType:4b} 0

execute store result score @s 762mag.nato run clear @s clock{Tags:["full","7.62mm Mag"],AmmoType:5b} 0
execute store result score @s 556mag.nato run clear @s clock{Tags:["full","5.56mm Mag"],AmmoType:5b} 0
execute store result score @s 009mag.nato run clear @s clock{Tags:["full","9mm Mag"],AmmoType:5b} 0
execute store result score @s 045mag.nato run clear @s clock{Tags:["full","4.5mm Mag"],AmmoType:5b} 0
execute store result score @s 12mmGmag.nato run clear @s clock{Tags:["full","12mm Guages Mag"],AmmoType:5b} 0

execute store result score @s 762mag.gzh run clear @s clock{Tags:["full","7.62mm Mag"],AmmoType:6b} 0
execute store result score @s 556mag.gzh run clear @s clock{Tags:["full","5.56mm Mag"],AmmoType:6b} 0
execute store result score @s 009mag.gzh run clear @s clock{Tags:["full","9mm Mag"],AmmoType:6b} 0
execute store result score @s 045mag.gzh run clear @s clock{Tags:["full","4.5mm Mag"],AmmoType:6b} 0
execute store result score @s 12mmGmag.gzh run clear @s clock{Tags:["full","12mm Guages Mag"],AmmoType:6b} 0

execute store result score @s 12mm.guage run clear @s clock{Tags:["12mm Guage"]} 0
#execute at @s store result score @s car.near_charge run scoreboard players get @e[tag=car,type=minecart,sort=nearest,distance=..2,limit=1] car.charge
