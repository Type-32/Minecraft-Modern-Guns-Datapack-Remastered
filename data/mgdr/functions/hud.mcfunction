#execute as @a[scores={ak.reload=4..},scores={mgdr.weaponUID=1}] at @s run function mgdr:hud/num/ak
#execute as @a[scores={mp40.reload=5..},tag=holdingMP40] at @s run function mgdr:hud/num/mp40
#execute as @a[scores={stg44.reload=4..},tag=holdingSTG44] at @s run function mgdr:hud/num/stg44
#execute as @a[scores={asval.reload=4..},scores={mgdr.weaponUID=2}] at @s run function mgdr:hud/num/asval
#execute as @a[scores={sig716.reload=4..},scores={mgdr.weaponUID=17}] at @s run function mgdr:hud/num/sig716
#execute as @a[scores={sig75t.reload=4..},tag=holdingSIG75T] at @s run function mgdr:hud/num/sig75t
#execute as @a[scores={cbr27.reload=4..},scores={mgdr.weaponUID=4}] at @s run function mgdr:hud/num/cbr27
#execute as @a[scores={cbr27a1.reload=5..},scores={mgdr.weaponUID=5}] at @s run function mgdr:hud/num/cbr27a1
#execute as @a[scores={mp7.reload=6..},scores={mgdr.weaponUID=15}] at @s run function mgdr:hud/num/mp7
#execute as @a[scores={mp5.reload=5..},scores={mgdr.weaponUID=13}] at @s run function mgdr:hud/num/mp5
#execute as @a[scores={mp5t.reload=5..},scores={mgdr.weaponUID=14}] at @s run function mgdr:hud/num/mp5t
#execute as @a[scores={cz117.reload=5..},scores={mgdr.weaponUID=8}] at @s run function mgdr:hud/num/cz117
#execute as @a[scores={grau.reload=5..},scores={mgdr.weaponUID=9}] at @s run function mgdr:hud/num/grau556
#execute as @a[scores={cbt97.reload=5..},scores={mgdr.weaponUID=7}] at @s run function mgdr:hud/num/cbt97
#execute as @a[scores={m14.reload=5..},scores={mgdr.weaponUID=10}] at @s run function mgdr:hud/num/m14
#execute as @a[scores={m1911.reload=4..},scores={mgdr.weaponUID=12}] at @s run function mgdr:hud/num/m1911
#execute as @a[scores={m17.reload=4..},scores={mgdr.weaponUID=11}] at @s run function mgdr:hud/num/m17
#execute as @a[scores={cbs5.reload=5..},scores={mgdr.weaponUID=6}] at @s run function mgdr:hud/num/cbs5
#execute as @a[scores={type2a.reload=5..},tag=holdingType2A] at @s run function mgdr:hud/num/type2a
#execute as @a[scores={vsg15.reload=4..},tag=holdingVSG15] at @s run function mgdr:hud/num/vsg15
#execute as @a[scores={vsg6t.reload=4..},tag=holdingVSG6T] at @s run function mgdr:hud/num/vsg6t
#execute as @a[scores={vec9.reload=5..},scores={mgdr.weaponUID=18}] at @s run function mgdr:hud/num/vec9
#execute as @a[scores={augpara.reload=5..},scores={mgdr.weaponUID=3}] at @s run function mgdr:hud/num/augpara
#execute as @a[tag=holdingDriveStick] at @s run function mgdr:hud/car
execute as @a[tag=holdingGun,scores={showhud=0,new_ui=1..}] run function mgdr:ammohud/master_node
execute as @a[tag=holdingGun,scores={new_ui=0}] run function mgdr:old_hud
