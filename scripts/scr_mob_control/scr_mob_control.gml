
if instance_exists(obj_manned_ship) {
	var target_grid_dist = abs(obj_manned_ship.i-i) + abs(obj_manned_ship.j-j)
}

switch behaviour {
	case Behav.wonder: {
		repeat 100 {
			var dir = irandom(3)
			var delta_i = lengthdir_x(1, dir*90)
			var delta_j = lengthdir_y(1, dir*90)
			if scr_try_move_rel(delta_i, delta_j)
				break
		}
		break
	}
	case Behav.patrol: {
		if pursue_target {
			
			if target_grid_dist == 1 {
				scr_start_battle(id)
			}
			else if target_grid_dist > vision_range {
				pursue_target = noone
			}
			else {
				var raw_dir = point_direction(x, y, pursue_target.x, pursue_target.y)/90
				var dir = round(raw_dir)
			
				if scr_try_move_dir(dir) { }
				else if scr_try_move_dir(dir+sign(raw_dir - dir)) { }
				else if scr_try_move_dir(dir-sign(raw_dir - dir)) { }
				else scr_try_move_dir(dir+2)
			}
		}
		else {
			if instance_exists(obj_manned_ship) {
				
				if target_grid_dist <= vision_range {
					pursue_target = obj_manned_ship
					on_patrol = false
				}
				
				else if on_patrol {
					scr_try_follow_path()
					if follow_path_end {
						follow_path_end = false
						current_path_dir *= -1
					}
				}
				
				else if current_path {
					scr_try_follow_path()
					if follow_path_end {
						scr_path_destroy(current_path)
						scr_set_follow_path(mp_path)
						on_patrol = true
					}
				}
				
				else {
					// follow to the patrol pth first point
					path_follow = path_add()
					scr_compute_path(path_follow, patrol_x, patrol_y)
					scr_set_follow_path(path_follow)
					scr_try_follow_path()
				}
			}
		}
	}
}



control_script = scr_anim_move

scr_sys_process_continue()