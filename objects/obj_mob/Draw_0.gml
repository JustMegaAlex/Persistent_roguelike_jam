
draw_self()

if behaviour == Behav.patrol and !alarm[1]
	for (var i = 0; i < path_get_length(mp_path)-1; i++) {
		var ii, jj
		ii = path_get_x(mp_path, i)
		jj = path_get_y(mp_path, i)
		draw_line(scr_x(path_get_x(mp_path, i)),
					scr_x(path_get_y(mp_path, i)),
					scr_x(path_get_x(mp_path, i+1)),
					scr_x(path_get_y(mp_path, i+1)))
	}
	