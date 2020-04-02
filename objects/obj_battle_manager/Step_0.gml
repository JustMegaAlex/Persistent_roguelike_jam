
protagonist_dead = !instance_exists(obj_manned_ship) 

oponent_dead = !instance_exists(oponent_world)

battle_end = keyboard_check_pressed(ord("E")) or protagonist_dead or oponent_dead

if battle_end {
	
	with obj_weapon
		if action != scr_stub {instance_destroy()}

	room_goto(rm_return_to)		
	event_perform(ev_alarm, 0)
}