#Attack Speed Modifier(Aiming, Idle)
execute as @a[tag=holdingGun,tag=!scopedVariant,predicate=mgdr:is_sneaking] run attribute @s generic.attack_speed base set 0
execute as @a[tag=holdingGun,predicate=!mgdr:is_sneaking] run attribute @s generic.attack_speed base set 4
tag @a[tag=holdingGun,tag=unchecked] remove unchecked

#Animation
#scoreboard players add @a[predicate=mgdr:is_sneaking,scores={aimTickAnim=..5}] aimTickAnim 1
#scoreboard players remove @a[predicate=!mgdr:is_sneaking,scores={aimTickAnim=1..}] aimTickAnim 1
#scoreboard players add @a[predicate=!mgdr:is_sneaking,scores={deaimTickAnim=..5}] deaimTickAnim 1
#scoreboard players remove @a[predicate=mgdr:is_sneaking,scores={deaimTickAnim=1..}] deaimTickAnim 1

#Model Cores Execution
execute as @a run function mgdr:model_enf_branch
#item replace entity @a[tag=holdingGun,predicate=mgdr:is_sneaking,tag=HandShown,scores={expFt=1..}] weapon.offhand with air
item replace entity @a[tag=holdingGun,predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=!HandShown,scores={expFt=1..}] weapon.offhand with clock{Tags:["hand"]}
#item replace entity @a[tag=holdingGun,predicate=mgdr:is_sprinting,predicate=!mgdr:is_sneaking,scores={expFt=1..}] weapon.offhand with air
#item replace entity @a[tag=holdingGun,predicate=!mgdr:is_sprinting,predicate=!mgdr:is_sneaking,tag=!HandShown,scores={expFt=1..}] weapon.offhand with clock{Tags:["hand"]}
#execute as @a[predicate=mgdr:is_sneaking] anchored eyes positioned ^ ^ ^2 run function mgdr:rays/red_dot_laser

execute as @a[tag=holdingGun,predicate=mgdr:is_sneaking] run function mgdr:clot_func/scope_zooming_true
execute as @a[tag=holdingGun,predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=!aimCheck] run function mgdr:clot_func/scope_zooming_false
#execute as @a[predicate=mgdr:is_sneaking,tag=haveSnipeOptic] run particle entity_effect ~ ~ ~ 0 1 0.5 1 0 force @s
