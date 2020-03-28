
with obj_battle_manager {
	
	if !instance_exists(oponent_world)
		oponent_dead = true
		
	if !instance_exists(obj_manned_ship)
		protagonist_dead = true
		
	battle_end = true
	room_goto(rm_return_to)		
	alarm[0] = 1
}

