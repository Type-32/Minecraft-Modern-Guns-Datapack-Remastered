execute if score @s dyn.fm matches 0 if score @s dyn.indicator matches 0 run function mgdr:ammohud/single/single_root
execute if score @s dyn.fm matches 1 if score @s dyn.indicator matches 0 run function mgdr:ammohud/auto/auto_root
execute if score @s dyn.fm matches 2 if score @s dyn.indicator matches 0 run function mgdr:ammohud/burst/burst_root
execute if score @s dyn.indicator matches 1 run function mgdr:ammohud/chamber/chamber_root