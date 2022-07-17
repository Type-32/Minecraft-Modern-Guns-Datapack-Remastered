#schedule function mgdr:use 1t replace
#Code Written by Type-32
#This part is for detecting if the player has right clicked while holding a specific gun
scoreboard objectives add usedCarrotPol minecraft.used:minecraft.carrot_on_a_stick
scoreboard players add @a usedCarrotPol 0
scoreboard objectives add fireDelay dummy
scoreboard objectives add fireDisplace dummy
scoreboard objectives add flashDelay dummy
scoreboard players add @a fireDisplace 0
scoreboard players add @a[tag=holdingGun,scores={fireDelay=..200}] fireDelay 1
scoreboard players add @a[tag=holdingGun] flashDelay 1

## CBR-27
execute as @a[tag=holdingCBR27,tag=!gunDisabled] at @s run function mgdr:use/cbr27

## CBR-27-A1
execute as @a[tag=holdingCBR27A1,tag=!gunDisabled] at @s run function mgdr:use/cbr27a1

## AS-VAL
execute as @a[tag=holdingASVAL,tag=!gunDisabled] at @s run function mgdr:use/asval

## AK
execute as @a[tag=holdingAK,tag=!gunDisabled] at @s run function mgdr:use/ak40

## SIG-716
execute as @a[tag=holdingSIG716,tag=!gunDisabled] at @s run function mgdr:use/sig716

## SIG-75-T
execute as @a[tag=holdingSIG75T,tag=!gunDisabled] at @s run function mgdr:use/sig75t

## MP-7
execute as @a[tag=holdingMP7,tag=!gunDisabled] at @s run function mgdr:use/mp7

## MP-5
execute as @a[tag=holdingMP5,tag=!gunDisabled] at @s run function mgdr:use/mp5

## MP-5-T
execute as @a[tag=holdingMP5T,tag=!gunDisabled] at @s run function mgdr:use/mp5t

## CZ-117
execute as @a[tag=holdingCZ117,tag=!gunDisabled] at @s run function mgdr:use/cz117

## Grau 5.56
execute as @a[tag=holdingGrau556,tag=!gunDisabled] at @s run function mgdr:use/grau556

## CBT-97
execute as @a[tag=holdingCBT97,tag=!gunDisabled] at @s run function mgdr:use/cbt97

## Origin-12
execute as @a[tag=holdingOrigin12,tag=!gunDisabled] at @s run function mgdr:use/origin12

## M-14
execute as @a[tag=holdingM14,scores={usedCarrotPol=1..},tag=!gunDisabled] at @s run function mgdr:use/sub/m14

## M-1911
execute as @a[tag=holdingM1911,scores={usedCarrotPol=1..},tag=!gunDisabled] at @s run function mgdr:use/sub/m1911

## M-17
execute as @a[tag=holdingM17,scores={usedCarrotPol=1..},tag=!gunDisabled] at @s run function mgdr:use/sub/m17

## CBS-5
execute as @a[tag=holdingCBS5] at @s run function mgdr:use/cbs5

## Vec-9 Fennec
execute as @a[tag=holdingVec9,tag=!gunDisabled] at @s run function mgdr:use/vec9

## AUG Para
execute as @a[tag=holdingAUGPara,tag=!gunDisabled] at @s run function mgdr:use/augpara

## Plane
execute as @a[tag=holdingPlaneSpawner,scores={usedCarrotPol=1..}] at @s run function mgdr:action/spawn_plane



##Using Combat Master Knife
execute as @a[tag=holdingCBMKnife,scores={usedCarrotPol=1..}] at @s run function mgdr:action/combat_master_knife

##Using Stim Shot
execute as @a[tag=holdingStimShot,scores={usedCarrotPol=1..}] at @s run function mgdr:action/stim_shot

##Using Grenade
execute as @a[tag=holdingGrenade,scores={usedCarrotPol=1..}] at @s run function mgdr:action/throw_grenade

##Using Flashbang
execute as @a[tag=holdingFlashbang,scores={usedCarrotPol=1..}] at @s run function mgdr:action/throw_flashbang

##Using Landmine
execute as @a[tag=holdingLandmine,scores={usedCarrotPol=1..}] at @s run function mgdr:action/place_landmine

##Using Lasers
execute as @a[tag=holdingGun,tag=!gunDisabled] at @s run function mgdr:func/use_laser

##Using Fireball
execute as @a[tag=holdingFireball,scores={usedCarrotPol=1..}] at @s run function mgdr:action/fireball_test

##Equip Night Vision Goggles
execute as @a[tag=holdingNODS,scores={usedCarrotPol=1..}] at @s run function mgdr:action/equip_nods

##Muzzle Flash Light Removal
execute as @a[tag=holdingGun,scores={flashDelay=1}] at @s run function mgdr:muzzle_flash_light_remove
execute as @a[tag=holdingGun,predicate=mgdr:is_sneaking,scores={aimSec=..1,aiming_fire=0}] run function mgdr:action/effects/aim_down_sights

## MP-40
#execute as @a[tag=holdingMP40,scores={usedCarrotPol=1..},tag=!gunDisabled] at @s run function mgdr:use/sub/mp40
#execute as @a[tag=holdingMP40,tag=!gunDisabled,scores={mp40.ammo=1..,fireDelay=2,mp40.fm=1}] at @s run function mgdr:action/mp40_act

## STG-44
#execute as @a[tag=holdingSTG44,scores={usedCarrotPol=1..},tag=!gunDisabled] at @s run function mgdr:use/sub/stg44
#execute as @a[tag=holdingSTG44,tag=!gunDisabled,scores={stg44.ammo=1..,fireDelay=2,stg44.fm=1}] at @s run function mgdr:action/stg44_act

## Type-2A
#execute as @a[tag=holdingType2A,scores={usedCarrotPol=1..},tag=!gunDisabled] at @s run function mgdr:use/sub/type2a
#execute as @a[tag=holdingType2A,tag=!gunDisabled,scores={fireDelay=1,type2a.fm=1}] unless score @s type2a.ammo matches ..0 at @s run function mgdr:action/type2a_act
#execute as @a[tag=holdingType2A,tag=!gunDisabled,scores={fireDelay=2,type2a.fm=1}] unless score @s type2a.ammo matches ..0 at @s run function mgdr:action/type2a_act
#execute as @a[tag=holdingType2A,tag=!gunDisabled,scores={fireDelay=3,type2a.fm=1}] unless score @s type2a.ammo matches ..0 at @s run function mgdr:action/type2a_act

## Volkssturmgewehr 1-5
#execute as @a[tag=holdingVSG15,scores={usedCarrotPol=1..},tag=!gunDisabled] at @s run function mgdr:use/sub/vsg15
#execute as @a[tag=holdingVSG15,tag=!gunDisabled,scores={fireDelay=1,vsg15.fm=2}] unless score @s vsg15.ammo matches ..0 at @s run function mgdr:action/vsg15_act
#execute as @a[tag=holdingVSG15,tag=!gunDisabled,scores={fireDelay=2,vsg15.fm=1..2}] unless score @s vsg15.ammo matches ..0 at @s run function mgdr:action/vsg15_act

## Volkssturmgewehr 6T
#execute as @a[tag=holdingVSG6T,scores={usedCarrotPol=1..},tag=!gunDisabled] at @s run function mgdr:use/sub/vsg6t
#execute as @a[tag=holdingVSG6T,tag=!gunDisabled,scores={fireDelay=1,vsg6t.fm=2}] unless score @s vsg6t.ammo matches ..0 at @s run function mgdr:action/vsg6t_act
#execute as @a[tag=holdingVSG6T,tag=!gunDisabled,scores={fireDelay=2,vsg6t.fm=1..2}] unless score @s vsg6t.ammo matches ..0 at @s run function mgdr:action/vsg6t_act

## Plane-MG
#execute as @a[tag=holdingController,scores={usedCarrotPol=1..,plane.mode=1},x_rotation=-90..80] at @s run function mgdr:action/controller_bomb_act
#execute as @a[tag=holdingController,scores={usedCarrotPol=1..,plane.mode=0},x_rotation=-90..80] at @s run function mgdr:use/sub/controller_func
#execute as @a[tag=holdingController,scores={fireDelay=2,plane.mode=0},x_rotation=-90..80] at @s run function mgdr:use/sub/controller_func
#execute as @a[tag=holdingController,scores={usedCarrotPol=1..},x_rotation=80.1..90] at @s run scoreboard players add @s plane.mode 1


## Car Gear Change
#execute as @a[tag=holdingDriveStick,scores={usedCarrotPol=1..},x_rotation=-90..69.9] at @s run scoreboard players add @s[scores={car.gear=..2}] car.gear 1
#execute as @a[tag=holdingDriveStick,scores={usedCarrotPol=1..},x_rotation=70..90] at @s run scoreboard players remove @s[scores={car.gear=1..}] car.gear 1

##Auto Reload
#function mgdr:command/func/auto_reload_action

#execute as @e[tag=shellInit,tag=bullet_shell,type=item] at @s rotated as @p run function mgdr:action/apply_shell_motion
## Reset scoreboard

scoreboard players set @a usedCarrotPol 0
