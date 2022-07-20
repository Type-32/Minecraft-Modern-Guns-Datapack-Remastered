## CBR-27
execute if entity @s[scores={mgdr.weaponUID=4},tag=!gunDisabled] run function mgdr:use/cbr27

## CBR-27-A1
execute if entity @s[scores={mgdr.weaponUID=5},tag=!gunDisabled] run function mgdr:use/cbr27a1

## AS-VAL
execute if entity @s[scores={mgdr.weaponUID=2},tag=!gunDisabled] run function mgdr:use/asval

## AK
execute if entity @s[scores={mgdr.weaponUID=1},tag=!gunDisabled] run function mgdr:use/ak40

## SIG-716
execute if entity @s[scores={mgdr.weaponUID=17},tag=!gunDisabled] run function mgdr:use/sig716

## MP-7
execute if entity @s[scores={mgdr.weaponUID=15},tag=!gunDisabled] run function mgdr:use/mp7

## MP-5
execute if entity @s[scores={mgdr.weaponUID=13},tag=!gunDisabled] run function mgdr:use/mp5

## MP-5-T
execute if entity @s[scores={mgdr.weaponUID=14},tag=!gunDisabled] run function mgdr:use/mp5t

## CZ-117
execute if entity @s[scores={mgdr.weaponUID=8},tag=!gunDisabled] run function mgdr:use/cz117

## Grau 5.56
execute if entity @s[scores={mgdr.weaponUID=9},tag=!gunDisabled] run function mgdr:use/grau556

## CBT-97
execute if entity @s[scores={mgdr.weaponUID=7},tag=!gunDisabled] run function mgdr:use/cbt97

## Origin-12
execute if entity @s[scores={mgdr.weaponUID=16},tag=!gunDisabled] run function mgdr:use/origin12

## M-14
execute if entity @s[scores={mgdr.weaponUID=10,usedCarrotPol=1..},tag=!gunDisabled] run function mgdr:use/sub/m14

## M-1911
execute if entity @s[scores={mgdr.weaponUID=12,usedCarrotPol=1..},tag=!gunDisabled] run function mgdr:use/sub/m1911

## M-17
execute if entity @s[scores={mgdr.weaponUID=11,usedCarrotPol=1..},tag=!gunDisabled] run function mgdr:use/sub/m17

## Vec-9 Fennec
execute if entity @s[scores={mgdr.weaponUID=18},tag=!gunDisabled] run function mgdr:use/vec9

## AUG Para
execute if entity @s[scores={mgdr.weaponUID=3},tag=!gunDisabled] run function mgdr:use/augpara

## CBS-5
execute if entity @s[scores={mgdr.weaponUID=6}] run function mgdr:use/cbs5

##Using Combat Master Knife
execute if entity @s[scores={mgdr.weaponUID=19,usedCarrotPol=1..}] run function mgdr:action/combat_master_knife

##Using Stim Shot
execute if entity @s[tag=holdingStimShot,scores={usedCarrotPol=1..}] run function mgdr:action/stim_shot

##Using Grenade
execute if entity @s[tag=holdingGrenade,scores={usedCarrotPol=1..}] run function mgdr:action/throw_grenade

##Using Flashbang
execute if entity @s[tag=holdingFlashbang,scores={usedCarrotPol=1..}] run function mgdr:action/throw_flashbang

##Using Landmine
execute if entity @s[tag=holdingLandmine,scores={usedCarrotPol=1..}] run function mgdr:action/place_landmine

##Using Lasers
execute if entity @s[tag=holdingGun,tag=!gunDisabled] run function mgdr:func/use_laser

##Using Fireball
execute if entity @s[tag=holdingFireball,scores={usedCarrotPol=1..}] run function mgdr:action/fireball_test

##Equip Night Vision Goggles
execute if entity @s[tag=holdingNODS,scores={usedCarrotPol=1..}] run function mgdr:action/equip_nods

##Muzzle Flash Light Removal
execute if entity @s[tag=holdingGun,scores={flashDelay=1}] run function mgdr:muzzle_flash_light_remove
