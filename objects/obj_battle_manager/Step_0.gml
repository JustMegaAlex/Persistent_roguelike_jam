
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

//// particles
if particle_ready {
	var xx = scr_camx(0) - scr_camw(0) * 0.3
	var yy = scr_camy(0) + random(scr_camh(0))
	part_particles_create(obj_particles.part_sys_effects, xx, yy, obj_particles.part_b_spark, 1)
	particle_ready = -1
}
particle_ready = scr_approach(particle_ready, 1, particle_rate)