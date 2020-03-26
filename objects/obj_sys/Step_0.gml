

if !process_busy {
	inst_current = instance_find(obj_active_instance_parent, inst_index)
	with inst_current {
		event_perform(ev_other, ev_user0)	
	}
	inst_index++
	process_busy = true
}
if inst_index == instance_number(obj_active_instance_parent)
	inst_index = 0
	
//if keyboard_check_pressed(ord("E"))
//	if room == rm_main
//		room_goto(rm_battle)
//	else 
//		room_goto(rm_main)

//// inputs
//input = keyboard_check(vk_anykey) or mouse_check_button(mb_any)

//mouse_left = mouse_check_button_pressed(mb_left)
//mouse_right = mouse_check_button_pressed(mb_right)
//key_aim = mouse_check_button_pressed(mb_right)
//key_stay = keyboard_check_pressed(ord("S"))
//key_cruise = keyboard_check_pressed(ord("A"))
//key_menu = keyboard_check_pressed(vk_escape)

////// ui interacting
//ui_mouse_x = window_mouse_get_x()
//ui_mouse_y = window_mouse_get_y()

//ui_mouse_over_obj = collision_point(ui_mouse_x, ui_mouse_y, obj_ui, true, true)
