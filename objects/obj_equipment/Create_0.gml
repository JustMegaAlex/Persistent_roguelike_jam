


//// general equipment
//// weapons
list_weapons = ds_list_create()
wp_crusher = instance_create_layer(0, 0, layer, obj_weapon)
wp_crusher.sprite_index = spr_proj_crusher
wp_crusher.ui_tail = spr_ui_crasher_bar_tail
wp_crusher.ui_cell = spr_ui_crasher_cell
wp_crusher.ui_spr = spr_ui_crasher_bar
wp_crusher.ui_left_tail = spr_ui_crasher_bar_left_tail
wp_crusher.capacity = 6
wp_crusher.charge = wp_crusher.capacity
wp_crusher.energy_consumption = 1
wp_crusher.type = "crusher"
wp_crusher.proj_action = scr_proj_kinetic
wp_crusher.sp = 5
wp_crusher.dmg_levels = [15,20,30]
wp_crusher.consume = "energy"
ds_list_add(list_weapons, wp_crusher)

//// phase control system
ph_basic = instance_create_layer(0, 0, layer, obj_phase_control)
ph_basic.ui_spr = spr_ui_usable_item
ph_basic.type = "basic"

with obj_phase_control{
	level = 0
	persistent = true
	visible = false
	action = scr_stub // weapon is not a proj itself
}

with obj_weapon {
	level = 0
	persistent = true
	visible = false
	action = scr_stub // weapon is not a proj itself
}