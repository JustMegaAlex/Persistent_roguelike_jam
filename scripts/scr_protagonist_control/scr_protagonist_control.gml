
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
			var inst = scr_get_cell(i+delta_i, j+ delta_j)
			if inst {
				if inst.object_index == obj_mob {
					scr_start_battle(inst)
					return
				}
			}
			if scr_try_move_rel(delta_i, delta_j) {
				control_script = scr_move
				alarm[0] = turn_delay
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
			break
		}
		scr_control_reset()
		scr_sys_process_continue()
	}
		
	case Control.jump: {
		var inp_h = key_right - key_left
		var inp_v = key_down - key_up
		
		if jump_horizontal {
			if abs(inp_v) { 
				jump_horizontal = false
				jump_current_dist =inp_v
			}
			jump_current_dist += inp_h
		}
		else {
			if abs(inp_h) { 
				jump_horizontal = true
				jump_current_dist = inp_h
			}
			jump_current_dist += inp_v
		}
		
		jump_current_dist = min(abs(jump_current_dist), jump_dist)*sign(jump_current_dist)
		jump_i = i+jump_current_dist*jump_horizontal
		jump_j = j+jump_current_dist*!jump_horizontal
		if key_action {
			if abs(jump_current_dist) and !scr_get_cell(jump_i, jump_j) {
				scr_swap_cells(i, j, jump_i, jump_j)
				scr_set_grid_pos(jump_i, jump_j)
				control_script = scr_anim_jump
				energy--
				control_state = Control.normal
			}
		}
	}
}

