#function mgdr:muzzle_flash_light_air_remove
#function mgdr:muzzle_flash_light_water_remove
fill ~-2 ~-2 ~-2 ~2 ~3 ~2 air replace light[waterlogged=false]
fill ~-2 ~-2 ~-2 ~2 ~3 ~2 water replace light[waterlogged=true]
