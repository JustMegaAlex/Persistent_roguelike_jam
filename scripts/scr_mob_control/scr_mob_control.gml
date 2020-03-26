var input_dir = irandom(3)
	
var delta_i = lengthdir_x(1, input_dir*90)
var delta_j = lengthdir_y(1, input_dir*90)
while !scr_try_move(delta_i, delta_j) {
	input_dir = irandom(3)
	delta_i = lengthdir_x(1, input_dir*90)
	delta_j = lengthdir_y(1, input_dir*90)
}

scr_control_reset()

scr_sys_process_continue()

alarm[0] = 1