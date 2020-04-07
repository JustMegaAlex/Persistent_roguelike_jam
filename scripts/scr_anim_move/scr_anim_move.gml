
if x != scr_x(i) or y != scr_y(j) {
	x = scr_approach(x, scr_x(i), anim_move_sp)
	y = scr_approach(y, scr_y(j), anim_move_sp)
}
else {
	scr_control_reset()
	// gather bonuses
	var bonus = global.grid_special[# i, j]
	if bonus and bonus.object_index == obj_bonus {
		
		switch bonus.type {
		    case "energy":
		        // code here
		        break;
		    default:
		        // code here
		        break;
		}
	}
}