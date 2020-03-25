//// movement animation

if x != scr_x(i) or y != scr_y(j) {
	x = scr_approach(x, scr_x(i), anim_move_sp)
	y = scr_approach(y, scr_y(j), anim_move_sp)
	alarm[0] = 1
}
else {
	obj_sys.process_busy = false
}