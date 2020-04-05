
repeat 100 {
	var input_dir = irandom(3)
	var delta_i = lengthdir_x(1, input_dir*90)
	var delta_j = lengthdir_y(1, input_dir*90)
	if scr_try_move_rel(delta_i, delta_j)
		break
}

control_script = scr_anim_move

scr_sys_process_continue()