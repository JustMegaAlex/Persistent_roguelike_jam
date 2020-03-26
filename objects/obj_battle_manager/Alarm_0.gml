
//// init battle
with instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_manned_ship) {
	control_script = scr_protagonist_battle
	parent_proj = instance_create_layer(x, y, layer, obj_proj)
	parent_proj.sprite_index = eq_weapon.sprite_index
	parent_proj.sp = eq_weapon.sp
	parent_proj.action = eq_weapon.action
	parent_proj.host_ship = id
}

with instance_create_layer(obj_opponent.x, obj_opponent.y, "Instances", obj_mob) {
	control_script = scr_mob_battle
	image_angle = 270
}