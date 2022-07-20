#Generic
tag @a[nbt=!{SelectedItem:{tag:{Tags:["mgdrGun"]}}}] remove holdingGun
tag @a[nbt=!{SelectedItem:{tag:{Tags:["haveOptic"]}}}] remove haveOptic
tag @a[nbt=!{SelectedItem:{tag:{Tags:["haveSnipeOptic"]}}}] remove haveSnipeOptic
tag @a[nbt=!{Inventory:[{Slot:-106b,tag:{Tags:["mgdrGun"]}}]}] remove Reloading
tag @a[predicate=!mgdr:is_sprinting,tag=!reloadGun] remove gunDisabled

#Items
tag @a[nbt=!{SelectedItem:{tag:{Tags:["grenade"]}}}] remove holdingGrenade
tag @a[nbt=!{SelectedItem:{tag:{Tags:["flashbang"]}}}] remove holdingFlashbang
tag @a[nbt=!{SelectedItem:{tag:{Tags:["landmine"]}}}] remove holdingLandmine
tag @a[nbt=!{SelectedItem:{tag:{Tags:["stim_shot"]}}}] remove holdingStimShot

#Equipment
tag @a[nbt=!{SelectedItem:{tag:{Tags:["equipment"]}}}] remove holdingEquipment
tag @a[nbt=!{SelectedItem:{tag:{Tags:["throwable"]}}}] remove holdingThrowable
tag @a[nbt=!{SelectedItem:{tag:{Tags:["NODS"]}}}] remove holdingNODS
tag @a[nbt=!{Inventory:[{Slot:103b,tag:{Tags:["NODS"]}}]}] remove wearingNODS
tag @a[nbt=!{Inventory:[{Slot:102b,tag:{Tags:["witheren_vest"]}}]}] remove WitherenVest
tag @a[nbt=!{Inventory:[{Slot:102b,tag:{Tags:["combat_master_vest"]}}]}] remove CombatMasterVest
