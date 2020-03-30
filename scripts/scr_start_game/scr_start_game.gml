/// @arg sector_type
/// @arg player_instance or noone

instance_create_layer(0, 0, "Sys", obj_sector_gen)

if argument1 
	scr_control_reset(argument1)

scr_sys_process_continue()
		
obj_sector_gen.sector_type = argument0
obj_sector_gen.protagonist_inst = argument1