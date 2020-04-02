
key_up = keyboard_check_pressed(vk_up)
key_down = keyboard_check_pressed(vk_down)
key_action = keyboard_check_pressed(ord("Z"))

choice_change = key_down - key_up

choice = scr_cycle_val(choice, -choice_change, array_length_1d(choices)-1)

script_execute(dialog_tree)

// transform string to array
if is_string(choices) 
	choices = variable_instance_get(id, choices)

if !is_array(choices) {
	instance_destroy()
	
	if instance_exists(obj_manned_ship)
		obj_manned_ship.control_state = Control.normal
}