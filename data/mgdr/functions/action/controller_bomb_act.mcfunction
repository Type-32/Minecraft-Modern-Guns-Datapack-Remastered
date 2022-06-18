execute as @s[predicate=!mgdr:is_sneaking] anchored eyes positioned ^-0.7 ^ ^1.5 run particle campfire_cosy_smoke ~ ~-0.5 ~ 0 3 0 .07 0 force @s[scores={tgl_particle=0}]
execute as @s[predicate=!mgdr:is_sneaking] anchored eyes positioned ^0.7 ^ ^1.5 run particle campfire_cosy_smoke ~ ~-0.5 ~ 0 3 0 .07 0 force @s[scores={tgl_particle=0}]
playsound block.note_block.bass voice @a[distance=..30] ~ ~ ~ 1000 0
playsound entity.armor_stand.break voice @a[distance=..30] ~ ~ ~ 1000 0
function mgdr:action/throw_plane_bomb