

if input_mode == Input.world and !process_busy and room != rm_battle{
	
	inst_current = global.queue[| queue_pos]
	
	if instance_exists(inst_current) {
		if inst_current.control_script == scr_stub {
			with inst_current {
				event_perform(ev_other, ev_user0)	
			}
			queue_pos++
			process_busy = true
		}
	}
	else {
		ds_list_delete(global.queue, queue_pos)
	}
	
	if queue_pos == ds_list_size(global.queue)
		queue_pos = 0
}


if keyboard_check_pressed(vk_tab) and debug_on
	debug_show = !debug_show
	
if keyboard_check_pressed(vk_escape)
	game_end()