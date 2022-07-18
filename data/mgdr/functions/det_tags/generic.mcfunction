tag @a[nbt={SelectedItem:{tag:{Tags:["mgdrGun"]}}}] add holdingGun
tag @a[nbt=!{SelectedItem:{tag:{Tags:["mgdrGun"]}}}] remove holdingGun
tag @a[nbt={SelectedItem:{tag:{Tags:["haveOptic"]}}}] add haveOptic
tag @a[nbt=!{SelectedItem:{tag:{Tags:["haveOptic"]}}}] remove haveOptic
tag @a[nbt={SelectedItem:{tag:{Tags:["haveSnipeOptic"]}}}] add haveSnipeOptic
tag @a[nbt=!{SelectedItem:{tag:{Tags:["haveSnipeOptic"]}}}] remove haveSnipeOptic
tag @a[nbt={Inventory:[{Slot:-106b,tag:{Tags:["mgdrGun"]}}]}] add Reloading
tag @a[nbt=!{Inventory:[{Slot:-106b,tag:{Tags:["mgdrGun"]}}]}] remove Reloading
tag @a[nbt={Inventory:[{Slot:-106b,tag:{Tags:["hand"]}}]}] add HandShown
tag @a[nbt=!{Inventory:[{Slot:-106b,tag:{Tags:["hand"]}}]}] remove HandShown
tag @a[nbt={Inventory:[{Slot:-106b}]}] add hasOffhandItem
tag @a[nbt=!{Inventory:[{Slot:-106b}]}] remove hasOffhandItem
tag @a[predicate=mgdr:is_sprinting] add gunDisabled
tag @a[predicate=!mgdr:is_sprinting,tag=!reloadGun] remove gunDisabled


function mgdr:det_tags/guntag
function mgdr:det_tags/equipmenttag
function mgdr:det_tags/variant
function mgdr:det_tags/func_items
function mgdr:det_tags/attachments
function mgdr:det_tags/vehicles
scoreboard players set @a[tag=!holdingGun] mgdr.weaponUID 0

#tag @a[nbt={Inventory:[{Slot:-106b,tag:{Tags:["attachmentKit"]}}]}] add attachmentKit
#tag @a[nbt=!{Inventory:[{Slot:-106b,tag:{Tags:["attachmentKit"]}}]}] remove attachmentKit

#tag @e[type=item,nbt={OnGround:1b,Item:{Count:1b,tag:{Tags:["empty","5.56mm Mag"]}}}] add 556magGround
#tag @e[type=item,nbt=!{OnGround:1b,Item:{Count:1b,tag:{Tags:["empty","5.56mm Mag"]}}}] remove 556magGround
#tag @e[type=item,nbt={OnGround:1b,Item:{Count:1b,tag:{Tags:["empty","4.5mm Mag"]}}}] add 045magGround
#tag @e[type=item,nbt=!{OnGround:1b,Item:{Count:1b,tag:{Tags:["empty","4.5mm Mag"]}}}] remove 045magGround
#tag @e[type=item,nbt={OnGround:1b,Item:{Count:1b,tag:{Tags:["empty","7.62mm Mag"]}}}] add 762magGround
#tag @e[type=item,nbt=!{OnGround:1b,Item:{Count:1b,tag:{Tags:["empty","7.62mm Mag"]}}}] remove 762magGround
#tag @e[type=item,nbt={OnGround:1b,Item:{Count:1b,tag:{Tags:["empty","9mm Mag"]}}}] add 009magGround
#tag @e[type=item,nbt=!{OnGround:1b,Item:{Count:1b,tag:{Tags:["empty","9mm Mag"]}}}] remove 009magGround
#tag @e[type=item,nbt={OnGround:1b,Item:{Count:1b,tag:{Tags:["bullet_box"]}}}] add bulletBoxGround
#tag @e[type=item,nbt=!{OnGround:1b,Item:{Count:1b,tag:{Tags:["bullet_box"]}}}] remove bulletBoxGround


