effect give @s instant_health 1 2 true
effect give @s speed 5 0 true
effect give @s strength 5 0 true
playsound minecraft:item.honey_bottle.drink voice @s ~ ~ ~ 1 2
#scoreboard players set @s[scores={fireDelay=4..}] fireDelay 0
item replace entity @s[gamemode=!creative] weapon.mainhand with air
