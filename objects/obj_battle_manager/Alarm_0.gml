
if !battle_end {
	//// init battle
	oponent_battle = instance_create_layer(obj_opponent.x, obj_opponent.y, "Instances", obj_mob)
	
	with instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_manned_ship) {
		control_script = scr_protagonist_battle
		obj_manned_ship.eq_weapon.persistent = true
		obj_manned_ship.eq_weapon.alarm[0] = 1
	}
	
	with oponent_battle {
		control_script = scr_mob_battle
		image_angle = 270
	}
}
else {
	//// end battle
	if oponent_dead {
		scr_cell_clear(oponent_world)
		instance_destroy(oponent_world)	
	}
	if protagonist_dead {
		scr_cell_clear(obj_manned_ship)
		instance_destroy(obj_manned_ship)
	}
	else {
		obj_manned_ship.eq_weapon.persistent = false
	}
	instance_destroy()
}