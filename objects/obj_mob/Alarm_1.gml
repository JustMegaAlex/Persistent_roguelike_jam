
//// late init
// generate patrol path
if behaviour == Behav.patrol {
	var max_rad = min(global.level_w, global.level_h)*0.4
	var rad = 0.6 + random(0.4)*max_rad
	var dir0 = irandom(360)
	var dir1 = dir0 + 120 + irandom(120)
	var px0, py0, px1, py1, cx, cy
	cx = global.level_w*0.5
	cy = global.level_h*0.5
	px0 = round(lengthdir_x(rad, dir0))
	py0 = round(lengthdir_y(rad, dir0))
	px1 = round(lengthdir_x(rad, dir1))
	py1 = round(lengthdir_y(rad, dir1))
	
	while scr_get_cell(px0, py0) {
		
	}
}