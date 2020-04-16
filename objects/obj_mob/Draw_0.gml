draw_self()

draw_text(x, y - 12, string(current_behaviour))

//if behaviour == Behav.patrol and !alarm[1] {
//	for (var k = 0; k < patrol_segment_count-2; k++) {
//		var i0, j0, i1, j1
//		i0 = patrol_xpoints[| k] + i
//		j0 = patrol_ypoints[| k] + j
//		i1 = patrol_xpoints[| k+1] + i
//		j1 = patrol_ypoints[| k+1] + j
//	    draw_line(scr_x(i0), scr_y(j0), scr_x(i1), scr_y(j1))
//	}
//}