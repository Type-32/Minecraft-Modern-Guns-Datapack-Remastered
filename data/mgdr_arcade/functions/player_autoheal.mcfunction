scoreboard players add @a[scores={hitTime=..99}] hitTime 1
effect give @a[tag=!hasAutoHealed,scores={hitTime=100..}] regeneration 5 3 true
tag @a[tag=!hasAutoHealed,scores={hitTime=100..}] add hasAutoHealed