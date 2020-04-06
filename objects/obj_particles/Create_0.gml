
//// particle systems
part_sys_effects = part_system_create_layer("Effects", false)
part_sys_effects_deep = part_system_create_layer("Effects_deep", false)


//// projectiles
part_projectile_explosion = part_type_create()
var life_time = sprite_get_number(spr_explosion) * 2
part_type_life(part_projectile_explosion,
					life_time,
					life_time)
part_type_sprite(part_projectile_explosion, 
					spr_explosion, 
					true, true, false)
part_type_orientation(part_projectile_explosion, 0, 360, 0, 0, false)
