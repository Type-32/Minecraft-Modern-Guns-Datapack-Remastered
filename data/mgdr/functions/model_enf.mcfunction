#Attack Speed Modifier(Aiming, Idle)
execute as @a[tag=holdingGun,tag=!scopedVariant,predicate=mgdr:is_sneaking] run attribute @s generic.attack_speed base set 0
execute as @a[tag=holdingGun,predicate=!mgdr:is_sneaking] run attribute @s generic.attack_speed base set 4

#Animation
#scoreboard players add @a[predicate=mgdr:is_sneaking,scores={aimTickAnim=..5}] aimTickAnim 1
#scoreboard players remove @a[predicate=!mgdr:is_sneaking,scores={aimTickAnim=1..}] aimTickAnim 1
#scoreboard players add @a[predicate=!mgdr:is_sneaking,scores={deaimTickAnim=..5}] deaimTickAnim 1
#scoreboard players remove @a[predicate=mgdr:is_sneaking,scores={deaimTickAnim=1..}] deaimTickAnim 1

#Model Cores Execution
execute as @a[tag=holdingMK7] run function mgdr:model_core/mk7/core

execute as @a[scores={mgdr.weaponUID=4}] run function mgdr:model_core/cbr27/core

execute as @a[scores={mgdr.weaponUID=5}] run function mgdr:model_core/cbr27a1/core

execute as @a[scores={mgdr.weaponUID=1}] run function mgdr:model_core/ak/core

execute as @a[scores={mgdr.weaponUID=2}] run function mgdr:model_core/asval/core

execute as @a[scores={mgdr.weaponUID=17}] run function mgdr:model_core/sig716/core

execute as @a[scores={mgdr.weaponUID=15}] run function mgdr:model_core/mp7/core

execute as @a[scores={mgdr.weaponUID=13}] run function mgdr:model_core/mp5/core

execute as @a[scores={mgdr.weaponUID=14}] run function mgdr:model_core/mp5t/core

execute as @a[scores={mgdr.weaponUID=8}] run function mgdr:model_core/cz117/core

execute as @a[scores={mgdr.weaponUID=16}] run function mgdr:model_core/origin12/core

execute as @a[scores={mgdr.weaponUID=10}] run function mgdr:model_core/m14/core

execute as @a[scores={mgdr.weaponUID=9}] run function mgdr:model_core/grau556/core

execute as @a[scores={mgdr.weaponUID=7}] run function mgdr:model_core/cbt97/core

execute as @a[scores={mgdr.weaponUID=12}] run function mgdr:model_core/m1911/core

execute as @a[scores={mgdr.weaponUID=11}] run function mgdr:model_core/m17/core

execute as @a[scores={mgdr.weaponUID=6}] run function mgdr:model_core/cbs5/core

execute as @a[tag=holdingType2A] run function mgdr:model_core/type2a/core

execute as @a[tag=holdingVSG15] run function mgdr:model_core/vsg15/core

execute as @a[tag=holdingVSG6T] run function mgdr:model_core/vsg6t/core

execute as @a[scores={mgdr.weaponUID=18}] run function mgdr:model_core/vec9/core

execute as @a[scores={mgdr.weaponUID=3}] run function mgdr:model_core/augpara/core

#item replace entity @a[tag=holdingGun,predicate=mgdr:is_sneaking,tag=HandShown,scores={expFt=1..}] weapon.offhand with air
item replace entity @a[tag=holdingGun,predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=!HandShown,scores={expFt=1..}] weapon.offhand with clock{Tags:["hand"]}
#item replace entity @a[tag=holdingGun,predicate=mgdr:is_sprinting,predicate=!mgdr:is_sneaking,scores={expFt=1..}] weapon.offhand with air
#item replace entity @a[tag=holdingGun,predicate=!mgdr:is_sprinting,predicate=!mgdr:is_sneaking,tag=!HandShown,scores={expFt=1..}] weapon.offhand with clock{Tags:["hand"]}
#execute as @a[predicate=mgdr:is_sneaking] anchored eyes positioned ^ ^ ^2 run function mgdr:rays/red_dot_laser

execute as @a[tag=holdingGun,predicate=mgdr:is_sneaking] run function mgdr:clot_func/scope_zooming_true
execute as @a[tag=holdingGun,predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=!aimCheck] run function mgdr:clot_func/scope_zooming_false
#execute as @a[predicate=mgdr:is_sneaking,tag=haveSnipeOptic] run particle entity_effect ~ ~ ~ 0 1 0.5 1 0 force @s
