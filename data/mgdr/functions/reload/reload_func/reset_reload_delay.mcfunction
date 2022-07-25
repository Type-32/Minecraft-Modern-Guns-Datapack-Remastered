scoreboard players set @s[scores={ak.reload=5..}] ak.reload 0
scoreboard players set @s[scores={mp40.reload=5..}] mp40.reload 0
scoreboard players set @s[scores={stg44.reload=5..}] stg44.reload 0
scoreboard players set @s[scores={asval.reload=5..}] asval.reload 0
scoreboard players set @s[scores={sig716.reload=5..}] sig716.reload 0
scoreboard players set @s[scores={sig75t.reload=5..}] sig75t.reload 0
scoreboard players set @s[scores={cbr27.reload=4..}] cbr27.reload 0
scoreboard players set @s[scores={cbr27a1.reload=4..}] cbr27a1.reload 0
scoreboard players set @s[scores={mp7.reload=6..}] mp7.reload 0
scoreboard players set @s[scores={mp5.reload=6..}] mp5.reload 0
scoreboard players set @s[scores={mp5t.reload=6..}] mp5t.reload 0
scoreboard players set @s[scores={cz117.reload=6..}] cz117.reload 0
scoreboard players set @s[scores={grau.reload=5..}] grau.reload 0
scoreboard players set @s[scores={cbt97.reload=5..}] cbt97.reload 0
scoreboard players set @s[scores={m14.reload=6..}] m14.reload 0
scoreboard players set @s[scores={m1911.reload=5..}] m1911.reload 0
scoreboard players set @s[scores={m17.reload=5..}] m17.reload 0
scoreboard players set @s[scores={cbs5.reload=6..}] cbs5.reload 0
scoreboard players set @s[scores={type2a.reload=6..}] type2a.reload 0
scoreboard players set @s[scores={vec9.reload=6..}] vec9.reload 0
scoreboard players set @s[scores={vsg15.reload=5..}] vsg15.reload 0
scoreboard players set @s[scores={vsg6t.reload=5..}] vsg6t.reload 0
scoreboard players set @s[scores={augpara.reload=6..}] augpara.reload 0
scoreboard players set @s[scores={origin12.reload=6..}] origin12.reload 0

scoreboard players set @s[predicate=mgdr:mag/009/mainhand_at1] mgdr.009mmAT 1
scoreboard players set @s[predicate=mgdr:mag/045/mainhand_at1] mgdr.045mmAT 1
scoreboard players set @s[predicate=mgdr:mag/762/mainhand_at1] mgdr.762mmAT 1
scoreboard players set @s[predicate=mgdr:mag/556/mainhand_at1] mgdr.556mmAT 1
scoreboard players set @s[predicate=mgdr:mag/12/mainhand_at1] mgdr.12mmGAT 1

scoreboard players set @s[predicate=mgdr:mag/009/mainhand_at2] mgdr.009mmAT 2
scoreboard players set @s[predicate=mgdr:mag/045/mainhand_at2] mgdr.045mmAT 2
scoreboard players set @s[predicate=mgdr:mag/762/mainhand_at2] mgdr.762mmAT 2
scoreboard players set @s[predicate=mgdr:mag/556/mainhand_at2] mgdr.556mmAT 2
scoreboard players set @s[predicate=mgdr:mag/12/mainhand_at2] mgdr.12mmGAT 2

scoreboard players set @s[predicate=mgdr:mag/009/mainhand_at3] mgdr.009mmAT 3
scoreboard players set @s[predicate=mgdr:mag/045/mainhand_at3] mgdr.045mmAT 3
scoreboard players set @s[predicate=mgdr:mag/762/mainhand_at3] mgdr.762mmAT 3
scoreboard players set @s[predicate=mgdr:mag/556/mainhand_at3] mgdr.556mmAT 3
scoreboard players set @s[predicate=mgdr:mag/12/mainhand_at3] mgdr.12mmGAT 3

scoreboard players set @s[predicate=mgdr:mag/009/mainhand_at4] mgdr.009mmAT 4
scoreboard players set @s[predicate=mgdr:mag/045/mainhand_at4] mgdr.045mmAT 4
scoreboard players set @s[predicate=mgdr:mag/762/mainhand_at4] mgdr.762mmAT 4
scoreboard players set @s[predicate=mgdr:mag/556/mainhand_at4] mgdr.556mmAT 4
scoreboard players set @s[predicate=mgdr:mag/12/mainhand_at4] mgdr.12mmGAT 4

scoreboard players set @s[predicate=mgdr:mag/009/mainhand_at5] mgdr.009mmAT 5
scoreboard players set @s[predicate=mgdr:mag/045/mainhand_at5] mgdr.045mmAT 5
scoreboard players set @s[predicate=mgdr:mag/762/mainhand_at5] mgdr.762mmAT 5
scoreboard players set @s[predicate=mgdr:mag/556/mainhand_at5] mgdr.556mmAT 5
scoreboard players set @s[predicate=mgdr:mag/12/mainhand_at5] mgdr.12mmGAT 5

scoreboard players set @s[predicate=mgdr:mag/009/mainhand_at6] mgdr.009mmAT 6
scoreboard players set @s[predicate=mgdr:mag/045/mainhand_at6] mgdr.045mmAT 6
scoreboard players set @s[predicate=mgdr:mag/762/mainhand_at6] mgdr.762mmAT 6
scoreboard players set @s[predicate=mgdr:mag/556/mainhand_at6] mgdr.556mmAT 6
scoreboard players set @s[predicate=mgdr:mag/12/mainhand_at6] mgdr.12mmGAT 6

function mgdr:reload/reload_func/gun_switch_offhand
function mgdr:det_tags/generic
function mgdr:reload/reload_func/check_ammotype
tag @s remove Reloading



#function mgdr:reload/reload_func/cancel_reload
#tellraw @s "Error Here!"
