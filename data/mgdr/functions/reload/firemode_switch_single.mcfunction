## Remove switch_firemode tag
tag @s[scores={ak.fm=1..},scores={mgdr.weaponUID=1}] remove switch_firemode
tag @s[scores={sig716.fm=1..},scores={mgdr.weaponUID=17}] remove switch_firemode
tag @s[scores={asval.fm=1..},scores={mgdr.weaponUID=2}] remove switch_firemode
tag @s[scores={cbr27.fm=1..},scores={mgdr.weaponUID=4}] remove switch_firemode
tag @s[scores={cbr27a1.fm=1..},scores={mgdr.weaponUID=5}] remove switch_firemode
tag @s[scores={mp7.fm=1..},scores={mgdr.weaponUID=15}] remove switch_firemode
tag @s[scores={mp5.fm=1..},scores={mgdr.weaponUID=13}] remove switch_firemode
tag @s[scores={mp5t.fm=1..},scores={mgdr.weaponUID=14}] remove switch_firemode
tag @s[scores={cbt97.fm=1..},scores={mgdr.weaponUID=7}] remove switch_firemode
tag @s[scores={grau.fm=1..},scores={mgdr.weaponUID=9}] remove switch_firemode
tag @s[scores={cz117.fm=1..},scores={mgdr.weaponUID=8}] remove switch_firemode
tag @s[scores={vec9.fm=1..},scores={mgdr.weaponUID=18}] remove switch_firemode

#Burst Guns: SIG-716, SIG-75-T, VSG-15, AS-VAL, CBR-27, Grau 5.56

## Set firemode score
scoreboard players set @s[scores={ak.fm=1..},scores={mgdr.weaponUID=1}] ak.fm 0
scoreboard players set @s[scores={sig716.fm=1..},scores={mgdr.weaponUID=17}] sig716.fm 0
scoreboard players set @s[scores={asval.fm=1..},scores={mgdr.weaponUID=2}] asval.fm 0
scoreboard players set @s[scores={cbr27.fm=1..},scores={mgdr.weaponUID=4}] cbr27.fm 0
scoreboard players set @s[scores={cbr27a1.fm=1..},scores={mgdr.weaponUID=5}] cbr27a1.fm 0
scoreboard players set @s[scores={mp7.fm=1..},scores={mgdr.weaponUID=15}] mp7.fm 0
scoreboard players set @s[scores={mp5.fm=1..},scores={mgdr.weaponUID=13}] mp5.fm 0
scoreboard players set @s[scores={mp5t.fm=1..},scores={mgdr.weaponUID=14}] mp5t.fm 0
scoreboard players set @s[scores={cbt97.fm=1..},scores={mgdr.weaponUID=7}] cbt97.fm 0
scoreboard players set @s[scores={grau.fm=1..},scores={mgdr.weaponUID=9}] grau.fm 0
scoreboard players set @s[scores={cz117.fm=1..},scores={mgdr.weaponUID=8}] cz117.fm 0
scoreboard players set @s[scores={vec9.fm=1..},scores={mgdr.weaponUID=18}] vec9.fm 0
execute at @s run playsound mgdr:others.fireselect voice @s ~ ~10000000 ~ 10000000
