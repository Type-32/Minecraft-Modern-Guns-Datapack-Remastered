#Generic
tag @a[nbt={SelectedItem:{tag:{Tags:["mgdrGun"]}}}] add holdingGun
tag @a[nbt={SelectedItem:{tag:{Tags:["haveOptic"]}}}] add haveOptic
tag @a[nbt={SelectedItem:{tag:{Tags:["haveSnipeOptic"]}}}] add haveSnipeOptic
tag @a[nbt={Inventory:[{Slot:-106b,tag:{Tags:["mgdrGun"]}}]}] add Reloading
tag @a[predicate=mgdr:is_sprinting] add gunDisabled

#Items
tag @a[nbt={SelectedItem:{tag:{Tags:["grenade"]}}}] add holdingGrenade
tag @a[nbt={SelectedItem:{tag:{Tags:["flashbang"]}}}] add holdingFlashbang
tag @a[nbt={SelectedItem:{tag:{Tags:["landmine"]}}}] add holdingLandmine
tag @a[nbt={SelectedItem:{tag:{Tags:["stim_shot"]}}}] add holdingStimShot

#Equipment
tag @a[nbt={SelectedItem:{tag:{Tags:["equipment"]}}}] add holdingEquipment
tag @a[nbt={SelectedItem:{tag:{Tags:["throwable"]}}}] add holdingThrowable
tag @a[nbt={SelectedItem:{tag:{Tags:["NODS"]}}}] add holdingNODS
tag @a[nbt={Inventory:[{Slot:103b,tag:{Tags:["NODS"]}}]}] add wearingNODS
tag @a[nbt={Inventory:[{Slot:102b,tag:{Tags:["witheren_vest"]}}]}] add WitherenVest
tag @a[nbt={Inventory:[{Slot:102b,tag:{Tags:["combat_master_vest"]}}]}] add CombatMasterVest
