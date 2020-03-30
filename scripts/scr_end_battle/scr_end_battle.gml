
with obj_battle_manager {
	
	//with obj_weapon
	//	if action != scr_stub {instance_destroy()}

	if !instance_exists(obj_manned_ship)
		protagonist_dead = true
		
	battle_end = true
	room_goto(rm_return_to)		
	event_perform(ev_alarm, 0)
}

