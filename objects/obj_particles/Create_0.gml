
//// particle systems
part_sys_effects = part_system_create_layer("Effects", false)
part_sys_effects_deep = part_system_create_layer("Effects_deep", false)


//// projectiles
// swarm rocket explosion
part_projectile_explosion = part_type_create()
var life_time = sprite_get_number(spr_explosion) * 2
part_type_life(part_projectile_explosion,
					life_time,
					life_time)
part_type_sprite(part_projectile_explosion, 
					spr_explosion, 
					true, true, false)
part_type_orientation(part_projectile_explosion, 0, 360, 0, 0, false)

// battle sparks
part_b_spark = part_type_create()
life_time = room_speed * 0.25
var sp = 3
var dir = 20
part_type_life(part_b_spark, life_time, life_time)
part_type_sprite(part_b_spark, spr_spark, true, true, false)
// part_type_speed(part_b_spark, sp, sp, 0, 0)
// part_type_direction(part_b_spark, 180-dir, 180+dir, 0, 0)
part_type_scale(part_b_spark, scr_camw(0)*1.6, 1)
part_type_alpha2(part_b_spark, 0.2, 0)

// bonus sparks
part_bonus_spark = part_type_create()
life_time = room_speed * 0.25
sp = 1
part_type_life(part_bonus_spark, life_time, life_time)
part_type_speed(part_bonus_spark, sp, sp, 0, 0)
part_type_sprite(part_bonus_spark, spr_spark, true, true, false)
part_type_alpha2(part_bonus_spark, 1, 0.2)




