
//// input 
key_right = keyboard_check_pressed(vk_right)
key_left = keyboard_check_pressed(vk_left)
key_up = keyboard_check_pressed(vk_up)
key_down = keyboard_check_pressed(vk_down)
key_action = keyboard_check_pressed(ord("Z"))
key_open_actions = keyboard_check_pressed(ord("Q"))


switch control_state {
	
	case Control.normal: {
		
		if key_open_actions {
			instance_create_layer(0, 0, "Sys", obj_ui_special_actions)
			control_state = Control.special_action
		}
		var input_dir = key_right + key_up*2 + key_left*3 + key_down*4
		// warn on inadequate input
		if input_dir > 4
			show_error("Input_dir = "+string(input_dir), false)
	
		if input_dir {
			input_dir--
			var delta_i = lengthdir_x(1, input_dir*90)
			var delta_j = lengthdir_y(1, input_dir*90)
			var inst = scr_cell_get_inst(i+delta_i, j+ delta_j)
			if inst {
				if inst.object_index == obj_mob {
					scr_start_battle(inst)
					return
				}
			}
			if scr_try_move(delta_i, delta_j) {
				scr_control_reset()
				alarm[0] = 1
			}
		}	
		break
	}
	
	case Control.special_action: {
		if key_open_actions {
			instance_destroy(obj_ui_special_actions)
			control_state = Control.normal
		}
		break
	}
	
	case Control.recombination: {
		energy++
		if energy == energy_capacity {
			control_state = Control.normal
			frame_active = true
		}
		scr_control_reset()
		scr_sys_process_continue()
	}
}

