
// choose behaviour

pursue_target = noone

var target_grid_dist = 100

if instance_exists(obj_manned_ship) {
	target_grid_dist = abs(obj_manned_ship.i-i) + abs(obj_manned_ship.j-j)
	if target_grid_dist <= vision_range {
		pursue_target = obj_manned_ship
		current_behaviour = Behav.persue
	}
	else {
		current_behaviour = behaviour
	}
}

switch current_behaviour {
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
		scr_move_patrol()
		break
	}
	case Behav.ambush: {
		/// just ambush
		break	
	}
	
	case Behav.persue: {
		if target_grid_dist == 1 {
			scr_start_battle(id)
		}
		else {
			var raw_dir = point_direction(x, y, pursue_target.x, pursue_target.y)/90
			var dir = round(raw_dir)
			
			if scr_try_move_dir(dir) { }
			else if scr_try_move_dir(dir+sign(raw_dir - dir)) { }
			else if scr_try_move_dir(dir-sign(raw_dir - dir)) { }
			else scr_try_move_dir(dir+2)
		}
		break
	}
}

control_script = scr_anim_move

scr_sys_process_continue()