
for (var i = 0; i < part_num; ++i) {
	var dir = i*360/part_num
	part_type_direction(obj_particles.part_bonus_spark, dir, dir, 0, 0)
    part_particles_create(obj_particles.part_sys_effects, x, y, obj_particles.part_bonus_spark, 1)
}