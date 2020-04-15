
//// late init
// generate patrol path
if behaviour == Behav.patrol {
	on_patrol = false
	patrol_segment_count = 0
	patrol_xpoints = ds_list_create()
	patrol_ypoints = ds_list_create()
	
	var dir, dir_pre, delta, ii, jj, lines, path_lines, min_line_len, rand_len
	
	min_line_len = 4
	path_lines = 3
	rand_len = 2
	
	//var path_kind = choose("linear", "L", "square", "Z")
	
	scr_patrol_add_point(0, 0)
	dir_pre = -10
	lines = 0
	ii = 0 
	jj = 0
	while lines < path_lines {
		dir = irandom(3)
		
		if abs(dir-dir_pre) == 2
			break
			
		dir_pre = dir
		delta = min_line_len + irandom(rand_len)
		ii += lengthdir_x(delta, dir*90)
		jj += lengthdir_y(delta, dir*90)
		scr_patrol_add_point(ii, jj)
		lines++
	}
	
	for (var i = lines-1; i >= 0; i--) {
		scr_patrol_add_point(patrol_xpoints[| i], patrol_ypoints[| i])
	}
}
	
	//switch path_kind {
		
	//	case "linear": {
			
	//		scr_patrol_add_point(i, j)
			
	//		delta = min_path_len + irandom(rand_len)
	//		dir = scr_chance(0.5)*2 - 1
	//		delta *= dir
	//		if scr_chance(0.5)
	//			scr_patrol_add_point(i+delta, j)
	//		else
	//			scr_patrol_add_point(i, j+delta)
			
	//		scr_patrol_add_point(i, j)
			
	//		break
	//	}
		
	//	case "L": {
			
	//		scr_patrol_add_point(i, j)
			
	//		delta = min_path_len + irandom(rand_len)
	//		if scr_chance(0.5) {
	//			ii = i+delta
	//			scr_patrol_add_point(ii, j)
	//			delta = min_path_len + irandom(rand_len)
	//			scr_patrol_add_point(ii, j+delta)
	//		}
	//		else {
	//			jj = j+delta
	//			scr_patrol_add_point(i, jj)
	//			delta = min_path_len + irandom(rand_len)
	//			scr_patrol_add_point(i+delta, jj)
	//		}
			
	//		scr_patrol_add_point(patrol_xpoints[| 1], patrol_ypoints[| 1])
			
	//		scr_patrol_add_point(i, j)
			
	//		break
	//	}
		
	//	case "square": {
	//		scr_patrol_add_point(i, j)
			
	//		delta = min_path_len + irandom(rand_len)
	//		if scr_chance(0.5) {
	//			ii = i+delta
	//			scr_patrol_add_point(ii, j)
	//			delta = min_path_len + irandom(rand_len)
	//			jj = j + delta
	//			scr_patrol_add_point(ii, jj)
	//			scr_patrol_add_point(i, jj)
	//		}
	//		else {
	//			jj = j + delta
	//			scr_patrol_add_point(i, jj)
	//			delta = min_path_len + irandom(rand_len)
	//			ii = i+delta
	//			scr_patrol_add_point(ii, jj)
	//			scr_patrol_add_point(ii, j)
	//		}
			
	//		scr_patrol_add_point(i, j)
	//		break
	//	}
		
	//	case "Z": {
			
	//		break
	//	}
		
//	}
//}