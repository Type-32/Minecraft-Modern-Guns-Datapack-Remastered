execute as @e[tag=Alliegiance,tag=SpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run tp @a[team=alliegiance] @s
execute as @e[tag=Coalition,tag=SpawnPoint,type=armor_stand,tag=ArcadeAsset,sort=random] at @s run tp @a[team=coalition] @s
function mgdr_arcade:respawn/assign_weapons
tag @s remove DeadPlayer
scoreboard players set @s deathTimer 0