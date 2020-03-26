
// inst to fight
oponent = noone

// to battle
room_goto(rm_battle)

with instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_manned_ship) {
	control_script = scr_protagonist_battle
}

with instance_create_layer(obj_opponent.x, obj_opponent.y, "Instances", obj_manned_ship) {
	control_script = scr_mob_battle
	image_angle = 270
}