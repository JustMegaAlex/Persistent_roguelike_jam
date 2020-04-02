
if !battle_end {
	//// init battle
	with oponent_world {
		control_script = scr_mob_battle
		image_angle = 270
		x = obj_opponent.x
		y = obj_opponent.y
		eq_weapon.alarm[0] = 2
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
	// room is switched in scr_end_battle()
	
	if room == rm_battle {
		if instance_exists(obj_parent_projectile)
			instance_destroy(obj_parent_projectile)
		alarm[0] = 1
	}
	else {
		// in world room
		if protagonist_dead {
			scr_dialog_open(scr_dialog_game_over)
		}
		else with obj_manned_ship {
				control_script = scr_protagonist_control
				image_angle = 90
				x = scr_x(i)
				y = scr_y(j)
			}
		
		if !oponent_dead {
			with oponent_world {
				control_script = scr_mob_control
				image_angle = 90
				x = scr_x(i)
				y = scr_y(j)
				battle_state = Battle.idle
				persistent = false
				
				if instance_exists(eq_weapon)
					eq_weapon.persistent = true
				if instance_exists(eq_phase)
					eq_phase.persistent = true
			}
		}
		instance_destroy()
	}
}