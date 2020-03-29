
if obj_manned_ship.key_action {
	switch list_actions[| choice] {
		case "recombination": {
			obj_manned_ship.control_state = Control.recombination
			scr_sys_process_continue()
			break
		}
	}
	instance_destroy()
}

scroll_dir = obj_manned_ship.key_right - obj_manned_ship.key_left

choice = scr_cicle_val(choice, scroll_dir, actions_num)

infc_rot_to += scroll_dir*infc_icon_angle

infc_rot = scr_approach(infc_rot, infc_rot_to, infc_rot_sp)