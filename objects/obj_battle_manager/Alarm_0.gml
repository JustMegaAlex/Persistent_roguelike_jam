
if !battle_end {
	//// init battle
	with oponent_world {
		control_script = scr_mob_battle
		image_angle = 270
		x = obj_opponent.x
		y = obj_opponent.y
		eq_weapon.alarm[0] = 2 
		synchronized = 1
	}
	
	with obj_manned_ship {
		x = obj_player.x
		y = obj_player.y
		control_script = scr_protagonist_battle
		eq_weapon.alarm[0] = 1
		eq_phase.alarm[0] = 1
		synchronized = 1
	}
	
	//// create asters
	repeat aster_num {
	    instance_create_layer(irandom(room_width), irandom(room_height), "Instances", obj_b_asteroid)
	}
}
else {
	//// end battle
	// room is switched in scr_end_battle()
	
	if room == rm_battle {
		if instance_exists(obj_parent_projectile)
			instance_destroy(obj_parent_projectile)
			
		if !oponent_dead
			with oponent_world
				control_script = scr_mob_control
				
		room_goto(rm_return_to)	
		
		alarm[0] = 1
	}
	else {
		// in world room
		if protagonist_dead {
			scr_dialog_open(scr_dialog_game_over)
		}
		else {
			with obj_manned_ship {
				control_script = scr_protagonist_control
				image_angle = 90
				x = scr_x(i)
				y = scr_y(j)
			}
		}
		
		if !oponent_dead {
			with oponent_world {
				scr_control_reset()
				image_angle = 90
				x = scr_x(i)
				y = scr_y(j)
				battle_state = Battle.idle
				persistent = false
				
				if instance_exists(eq_weapon)
					eq_weapon.persistent = false
				if instance_exists(eq_phase)
					eq_phase.persistent = false
			}
		}
		instance_destroy()
	}
}