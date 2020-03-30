
with obj_battle_manager {
	
	if !instance_exists(oponent_world)
		oponent_dead = true
	else
		oponent_world.eq_weapon.alarm[0] = 0
	
	with obj_weapon
		if action != scr_stub {instance_destroy()}

	if !instance_exists(obj_manned_ship)
		protagonist_dead = true
		
	battle_end = true
	room_goto(rm_return_to)		
	event_perform(ev_alarm, 0)
}

