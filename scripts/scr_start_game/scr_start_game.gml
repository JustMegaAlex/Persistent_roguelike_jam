/// @arg :string: sector_type
/// @arg player_instance or noone

instance_create_layer(0, 0, "Sys", obj_sector_gen)
		
obj_sector_gen.sector_type = argument0
obj_sector_gen.protagonist_inst = argument1