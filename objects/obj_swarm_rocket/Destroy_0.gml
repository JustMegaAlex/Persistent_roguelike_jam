
part_particles_create(obj_particles.part_sys_effects, x, y,
						obj_particles.part_projectile_explosion, 1)
						

if got_him or instance_exists(obj_active_instance_parent) {
	var i = 0
	var inst = instance_find(obj_active_instance_parent, i)
	while inst {
		if point_distance(x, y, inst.x, inst.y) <= explosion_radius
			scr_bring_damage(inst, damage)
		inst = instance_find(obj_active_instance_parent, ++i)
	}
}