
if !current_path or follow_path_end
	return false

var ii = path_get_x(current_path, current_path_point+current_path_dir)
var jj = path_get_y(current_path, current_path_point+current_path_dir)

if scr_try_move(ii, jj) {
	current_path_point += current_path_dir
	if current_path_point == path_get_length(current_path)
		follow_path_end = true
	return true
}

return false