
//// input 
key_right = keyboard_check_pressed(vk_right)
key_left = keyboard_check_pressed(vk_left)
key_up = keyboard_check_pressed(vk_up)
key_down = keyboard_check_pressed(vk_down)
key_recomb = keyboard_check_pressed(ord("X"))
key_use_item = keyboard_check_pressed(ord("C"))

if key_recomb
	control_state = Control.recombination

switch control_state {
	case Control.normal: {
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

