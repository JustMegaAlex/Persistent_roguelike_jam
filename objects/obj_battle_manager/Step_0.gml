
protagonist_dead = !instance_exists(obj_manned_ship) 

oponent_dead = !instance_exists(oponent_world)

if !oponent_dead
	someone_exit = !oponent_world.synchronized

if !protagonist_dead
	someone_exit = someone_exit or !obj_manned_ship.synchronized

battle_end = keyboard_check_pressed(ord("E")) or someone_exit

if someone_exit or protagonist_dead {
	event_perform(ev_alarm, 0)
}