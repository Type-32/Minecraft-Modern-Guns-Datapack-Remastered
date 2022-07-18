tag @s[scores={sig716.fm=1,mgdr.weaponUID=17}] remove switch_firemode
tag @s[scores={sig75t.fm=1},tag=holdingSIG75T] remove switch_firemode
tag @s[scores={asval.fm=1,mgdr.weaponUID=2}] remove switch_firemode
tag @s[scores={cbr27.fm=1,mgdr.weaponUID=4}] remove switch_firemode
tag @s[scores={grau.fm=1,mgdr.weaponUID=9}] remove switch_firemode
tag @s[scores={augpara.fm=1,mgdr.weaponUID=3}] remove switch_firemode
scoreboard players set @s[scores={sig716.fm=1,mgdr.weaponUID=17}] sig716.fm 2
scoreboard players set @s[scores={sig75t.fm=1},tag=holdingSIG75T] sig75t.fm 2
scoreboard players set @s[scores={asval.fm=1,mgdr.weaponUID=2}] asval.fm 2
scoreboard players set @s[scores={cbr27.fm=1,mgdr.weaponUID=4}] cbr27.fm 2
scoreboard players set @s[scores={grau.fm=1,mgdr.weaponUID=9}] grau.fm 2
scoreboard players set @s[scores={augpara.fm=1,mgdr.weaponUID=3}] augpara.fm 0
execute at @s run playsound mgdr:others.fireselect voice @s ~ ~10000000 ~ 10000000
