var input_dir = irandom(4)
	
if input_dir {
	input_dir--
	var delta_i = lengthdir_x(1, input_dir*90)
	var delta_j = lengthdir_y(1, input_dir*90)
	if scr_try_move(delta_i, delta_j) {
		scr_control_reset()
		alarm[0] = 1
	}
}