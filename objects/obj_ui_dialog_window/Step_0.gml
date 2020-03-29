
choice_change = obj_manned_ship.key_down - obj_manned_ship.key_up

choice = scr_cycle_val(choice, -choice_change, array_length_1d(choices)-1)

script_execute(dialog_tree)

// transform string to array
if is_string(choices) 
	choices = variable_instance_get(id, choices)

if !is_array(choices) {
	instance_destroy()
	obj_manned_ship.control_state = Control.normal
}