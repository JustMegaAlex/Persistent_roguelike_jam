

if input_mode == Input.world and !process_busy {
	inst_current = instance_find(obj_active_instance_parent, inst_index)
	with inst_current {
		event_perform(ev_other, ev_user0)	
	}
	inst_index++
	process_busy = true
}
if inst_index == instance_number(obj_active_instance_parent)
	inst_index = 0

if keyboard_check_pressed(vk_tab)
	debug_show = !debug_show
	
if keyboard_check_pressed(vk_escape)
	game_end()