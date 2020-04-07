
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
			scr_change_energy(2, obj_manned_ship)
			scr_start_game("random", instance_find(obj_manned_ship, 0))
			break
		}
		case "jump": {
			obj_manned_ship.control_state = Control.jump
			break
		}
		case "synchrobubble": {
			instance_create_layer(scr_x(obj_manned_ship.i), scr_y(obj_manned_ship.j), "Instances", obj_synchrobubble)
			scr_control_reset(obj_manned_ship)
			scr_sys_process_continue()
			obj_manned_ship.control_state = Control.normal
		}
	}
	instance_destroy()
}

scroll_dir = obj_manned_ship.key_right - obj_manned_ship.key_left

choice = scr_cycle_val(choice, scroll_dir, actions_num)

infc_rot_to += scroll_dir*infc_icon_angle

infc_rot = scr_approach(infc_rot, infc_rot_to, infc_rot_sp)