

switch homing {
	case false: {
		image_angle += spin_rot_sp
		if !spinning_time-- {
			image_angle = 80 + random(homing_disperse_angle*2)
			homing = true
		}
		break
	}
	
	case true: {
		if instance_exists(target) {
			target_dir = point_direction(x, y, target.x, target.y) + dir_correction
			dist = point_distance(x, y, target.x, target.y)
		}
		
		dir_to = image_angle + scr_get_rel_dir(image_angle, target_dir)
		image_angle = scr_approach(image_angle, dir_to, homing_rot_sp)
		
		sp_x_to = lengthdir_x(sp_max, image_angle)
		sp_y_to = lengthdir_y(sp_max, image_angle)
		sp_x = scr_approach(sp_x, sp_x_to, acc)
		sp_y = scr_approach(sp_y, sp_y_to, acc)
		

		if dist < timer_trigger_dist
			explosion_timer--
		if !explosion_timer
			instance_destroy()
		
		if instance_exists(obj_active_instance_parent) {
			got_him = instance_place(x, y, obj_active_instance_parent)
			if got_him and got_him != host {
				instance_destroy()
			}
		}
	}
}

scr_move_coord(sp_x, sp_y)