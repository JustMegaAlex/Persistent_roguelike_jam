
if obj_manned_ship.key_action {
	switch list_actions[| choice] {
		case "recombination": {
			obj_manned_ship.control_state = Control.recombination
			scr_sys_process_continue()
			break
		}
		case "dialog": {
			obj_manned_ship.control_state = Control.dialog
			scr_dialog_open(scr_dialog)
			break
		}
		case "warp": {
			scr_start_game("random", instance_find(obj_manned_ship, 0))
		}
	}
	instance_destroy()
}

scroll_dir = obj_manned_ship.key_right - obj_manned_ship.key_left

choice = scr_cycle_val(choice, scroll_dir, actions_num)

infc_rot_to += scroll_dir*infc_icon_angle

infc_rot = scr_approach(infc_rot, infc_rot_to, infc_rot_sp)