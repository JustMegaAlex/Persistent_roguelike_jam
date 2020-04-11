
draw_self()

if behaviour == Behav.patrol and !alarm[1]
	draw_path(mp_path, scr_x(px0), scr_y(py0), true)