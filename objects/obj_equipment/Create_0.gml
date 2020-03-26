
//// general equipment
list_weapons = ds_list_create()
map_crusher = ds_map_create()
map_crusher[? "sprite"] = spr_proj_crusher
map_crusher[? "action"] = scr_proj_kinetic
map_crusher[? "sp"] = 5
map_crusher[? "dmg_levels"] = [1,2,3]
map_crusher[? "consume"] = "energy"

ds_list_add(map_crusher)