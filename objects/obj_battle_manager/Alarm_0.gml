
if !battle_end {
	//// init battle
	with oponent_world {
		control_script = scr_mob_battle
		image_angle = 270
		x = obj_opponent.x
		y = obj_opponent.y
	}
	
	with obj_manned_ship {
		x = obj_player.x
		y = obj_player.y
		control_script = scr_protagonist_battle
		eq_weapon.alarm[0] = 2
	}
}
else {
	//// end battle
	oponent_world.persistent = false
	
	//if oponent_dead {
	//	scr_cell_clear(oponent_world)
	//}
	if !oponent_dead {
		with oponent_world {
			control_script = scr_mob_control
			image_angle = 90
			x = scr_x(i)
			y = scr_y(j)
		}
	}
	
	if protagonist_dead {
		scr_cell_clear(obj_manned_ship)
	}
	else {
		with obj_manned_ship {
			control_script = scr_protagonist_control
			image_angle = 90
			x = scr_x(i)
			y = scr_y(j)
		}
	}
	instance_destroy()
}