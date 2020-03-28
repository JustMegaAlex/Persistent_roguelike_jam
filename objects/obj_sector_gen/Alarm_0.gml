
ds_grid_clear(global.grid, 0) 

if sector_type == "random" {
	if !protagonist_inst
		instance_create_layer(scr_x(1), scr_y(1), "Instances", obj_manned_ship)
	 aster_num = irandom_range(4, 10)
	 mob_num = irandom_range(3, 7)
	 
	 repeat mob_num {
		 i = irandom_range(1, global.level_w-1)
		 j = irandom_range(1, global.level_h-1)
		 while scr_cell_get_inst(i, j) {
			i = irandom_range(1, global.level_w-1)
			j = irandom_range(1, global.level_h-1)
		 }
		instance_create_layer(scr_x(i), scr_y(j), "Instances", obj_mob)
	 }
	 
	 repeat aster_num {
		 i = irandom(global.level_w)
		 j = irandom(global.level_h)
		 while scr_cell_get_inst(i, j) {
			i = irandom(global.level_w)
			j = irandom(global.level_h)
		 }
		instance_create_layer(scr_x(i), scr_y(j), "Instances", obj_asteroid)
	 }
}

instance_destroy()