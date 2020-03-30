/// @arg :string: sector_type
/// @arg player_instance or noone

instance_create_layer(0, 0, "Sys", obj_sector_gen)

//// clear current sector
if instance_exists(obj_space_instance_parent)
	with obj_space_instance_parent 
		if object_index != obj_manned_ship { instance_destroy() }
		
obj_sector_gen.sector_type = argument0
obj_sector_gen.protagonist_inst = argument1