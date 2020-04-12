
//// late init
// generate patrol path
if behaviour == Behav.patrol {
	
	on_patrol = false
	
	var max_rad = min(global.level_w, global.level_h)*0.4
	var rad = 0.6 + random(0.4)*max_rad
	var dir0 = irandom(360)
	//var dir1 = dir0 + 120 + irandom(120)
	var /*patrol_x, patrol_y,*/ px1, py1//, cx, cy
	//cx = global.level_w*0.5
	//cy = global.level_h*0.5
	patrol_x = i//round(cx + lengthdir_x(rad, dir0))
	patrol_y = j//round(cy + lengthdir_y(rad, dir0))
	px1 = round(patrol_x + lengthdir_x(rad, dir0))
	py1 = round(patrol_y + lengthdir_y(rad, dir0))
	
	// try compute a path
	repeat 100 {
		if mp_grid_path(global.mp_grid, mp_path, patrol_x, patrol_y, px1, py1, false)
			break
		dir0 = irandom(360)
		px1 = round(patrol_x + lengthdir_x(rad, dir0))
		py1 = round(patrol_y + lengthdir_y(rad, dir0))
	}
	if !path_get_length(mp_path)
		behaviour = Behav.wonder
}