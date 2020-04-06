
protagonist_dead = !instance_exists(obj_manned_ship) 

oponent_dead = !instance_exists(oponent_world)

if !oponent_dead
	someone_exit = !oponent_world.synchronized

if !protagonist_dead
	someone_exit = !obj_manned_ship.synchronized or someone_exit

battle_end = keyboard_check_pressed(ord("E")) or protagonist_dead or oponent_dead

if someone_exit {	
	event_perform(ev_alarm, 0)
}