
with obj_battle_manager {
	
	instance_destroy(obj_proj)
	
	if !instance_exists(oponent_battle)
		oponent_dead = true
	else
		instance_destroy(oponent_battle)
		
	if !instance_exists(obj_manned_ship)
		protagonist_dead = true
	else
		instance_destroy(obj_manned_ship)
		
	battle_end = true
	room_goto(rm_return_to)		
	alarm[0] = 1
}

