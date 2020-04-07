///@arg inst

var inst = id

if argument_count == 1
	inst = argument[0]
	
inst.control_script = scr_stub

if object_index == obj_manned_ship {
	// gather bonuses
	var bonus = global.grid_special[# i, j]
	if bonus and bonus.object_index == obj_bonus {
		
		switch bonus.type {
			case "energy":
			    scr_change_energy(1)
			    break
			case "sr":
				eq_phase.usable_num++
			case "sb":
				items_sb_num++
			default:
			    // code here
			    break
		}
	instance_destroy(bonus)
	global.grid_special[# i, j] = 0
	}
}