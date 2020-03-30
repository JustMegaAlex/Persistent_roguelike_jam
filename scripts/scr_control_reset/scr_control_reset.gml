///@arg inst

var inst = id

if argument_count == 1
	inst = argument[0]
	
inst.control_script = scr_stub

if inst.object_index == obj_manned_ship
	inst.control_state = Control.normal