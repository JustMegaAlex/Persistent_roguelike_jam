
//// late init
// generate patrol path
if behaviour == Behav.patrol {
	var max_rad = min(global.level_w, global.level_h)*0.4
	var rad = 0.6 + random(0.4)*max_rad
	var dir0 = irandom(360)
	var dir1 = dir0 + 120 + irandom(120)
	var /*px0, py0,*/ px1, py1, cx, cy
	cx = global.level_w*0.5
	cy = global.level_h*0.5
	px0 = round(cx + lengthdir_x(rad, dir0))
	py0 = round(cy + lengthdir_y(rad, dir0))
	px1 = round(cx + lengthdir_x(rad, dir1))
	py1 = round(cy + lengthdir_y(rad, dir1))
	
	// try compute a path
	mp_path = path_add()
	repeat 100 {
		if mp_grid_path(global.mp_grid, mp_path, scr_x(px0), scr_y(py0), scr_x(px1), scr_y(py1), false)
			break
		var dir = irandom(3)
		px0 += lengthdir_x(1, dir*90)
		py0 += lengthdir_y(1, dir*90)
		dir = irandom(3)
		px1 += lengthdir_x(1, dir*90)
		py1 += lengthdir_y(1, dir*90)
	}
}