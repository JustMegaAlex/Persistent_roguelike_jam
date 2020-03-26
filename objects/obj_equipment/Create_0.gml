
//// general equipment
list_weapons = ds_list_create()
wp_crusher = instance_create_layer(0, 0, layer, obj_weapon)
wp_crusher.sprite_index = spr_proj_crusher
wp_crusher.action = scr_proj_kinetic
wp_crusher.sp = 5
wp_crusher.dmg_levels = [1,2,3]
wp_crusher.consume = energy
ds_list_add(list_weapons, wp_crusher)