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

execute as @a[tag=holdingCBR27,tag=!Kilowatt] run function mgdr:model_core/cbr27/core
execute as @a[tag=holdingCBR27,tag=Kilowatt] run function mgdr:model_core/cbr27/kilowatt_variant
execute as @a[tag=holdingCBR27,scores={expFt=1..}] run function mgdr:model_core/cbr27/hand/core

execute as @a[tag=holdingCBR27A1] run function mgdr:model_core/cbr27a1/core

execute as @a[scores={mgdr.weaponUID=1},tag=!Resonance] run function mgdr:model_core/ak/core
execute as @a[scores={mgdr.weaponUID=1},tag=Resonance] run function mgdr:model_core/ak/resonance_variant
execute as @a[scores={mgdr.weaponUID=1},scores={expFt=1..}] run function mgdr:model_core/ak/hand/core

execute as @a[tag=holdingMP40] run function mgdr:model_core/mp40/core
execute as @a[tag=holdingMP40,scores={expFt=1..}] run function mgdr:model_core/mp40/hand/core

execute as @a[tag=holdingSTG44] run function mgdr:model_core/stg44/core
execute as @a[tag=holdingSTG44,scores={expFt=1..}] run function mgdr:model_core/stg44/hand/core

execute as @a[tag=holdingASVAL,tag=!Resonance] run function mgdr:model_core/asval/core
execute as @a[tag=holdingASVAL,scores={expFt=1..}] run function mgdr:model_core/asval/hand/core

execute as @a[tag=holdingSIG716] run function mgdr:model_core/sig716/core
execute as @a[tag=holdingSIG716,scores={expFt=1..}] run function mgdr:model_core/sig716/hand/core

execute as @a[tag=holdingSIG75T] run function mgdr:model_core/sig75t/core
execute as @a[tag=holdingSIG75T,scores={expFt=1..}] run function mgdr:model_core/sig75t/hand/core

execute as @a[tag=holdingMP7] run function mgdr:model_core/mp7/core
execute as @a[tag=holdingMP7,scores={expFt=1..}] run function mgdr:model_core/mp7/hand/core

execute as @a[tag=holdingMP5] run function mgdr:model_core/mp5/core
execute as @a[tag=holdingMP5,scores={expFt=1..}] run function mgdr:model_core/mp5/hand/core

execute as @a[tag=holdingMP5T] run function mgdr:model_core/mp5t/core
execute as @a[tag=holdingMP5T,scores={expFt=1..}] run function mgdr:model_core/mp5t/hand/core

execute as @a[tag=holdingCZ117] run function mgdr:model_core/cz117/core

execute as @a[tag=holdingOrigin12] run function mgdr:model_core/origin12/core

execute as @a[tag=holdingM14,tag=!Hardline] run function mgdr:model_core/m14/core
execute as @a[tag=holdingM14,tag=Hardline] run function mgdr:model_core/m14/hardline_variant

execute as @a[tag=holdingGrau556,tag=!Kilowatt] run function mgdr:model_core/grau556/core
execute as @a[tag=holdingGrau556,tag=Kilowatt] run function mgdr:model_core/grau556/kilowatt_variant

execute as @a[tag=holdingCBT97] run function mgdr:model_core/cbt97/core

execute as @a[tag=holdingM1911] run function mgdr:model_core/m1911/core

execute as @a[tag=holdingM17] run function mgdr:model_core/m17/core

execute as @a[tag=holdingCBS5] run function mgdr:model_core/cbs5/core

execute as @a[tag=holdingType2A] run function mgdr:model_core/type2a/core

execute as @a[tag=holdingVSG15] run function mgdr:model_core/vsg15/core

execute as @a[tag=holdingVSG6T] run function mgdr:model_core/vsg6t/core

execute as @a[tag=holdingVec9] run function mgdr:model_core/vec9/core

execute as @a[tag=holdingAUGPara] run function mgdr:model_core/augpara/core

#item replace entity @a[tag=holdingGun,predicate=mgdr:is_sneaking,tag=HandShown,scores={expFt=1..}] weapon.offhand with air
item replace entity @a[tag=holdingGun,predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=!HandShown,scores={expFt=1..}] weapon.offhand with clock{Tags:["hand"]}
#item replace entity @a[tag=holdingGun,predicate=mgdr:is_sprinting,predicate=!mgdr:is_sneaking,scores={expFt=1..}] weapon.offhand with air
#item replace entity @a[tag=holdingGun,predicate=!mgdr:is_sprinting,predicate=!mgdr:is_sneaking,tag=!HandShown,scores={expFt=1..}] weapon.offhand with clock{Tags:["hand"]}
#execute as @a[predicate=mgdr:is_sneaking] anchored eyes positioned ^ ^ ^2 run function mgdr:rays/red_dot_laser

execute as @a[tag=holdingGun,predicate=mgdr:is_sneaking] run function mgdr:clot_func/scope_zooming_true
execute as @a[tag=holdingGun,predicate=!mgdr:is_sneaking,predicate=!mgdr:is_sprinting,tag=!aimCheck] run function mgdr:clot_func/scope_zooming_false
#execute as @a[predicate=mgdr:is_sneaking,tag=haveSnipeOptic] run particle entity_effect ~ ~ ~ 0 1 0.5 1 0 force @s
