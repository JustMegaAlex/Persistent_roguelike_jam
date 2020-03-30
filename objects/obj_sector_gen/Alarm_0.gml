//// clear current sector
if instance_exists(obj_space_instance_parent)
	with obj_space_instance_parent 
		if object_index != obj_manned_ship { instance_destroy() }
ds_grid_clear(global.grid, 0)

if sector_type == "random" {
	
	bigger_sector = scr_chance(0.5)
	cols_num = 3 + bigger_sector
	rows_num = 3 + bigger_sector
	areas = ds_list_create()
	// default areas
	areas = scr_fill_list_from_array(areas, ["star", "planet", "planet", "aster", "aster", "empty"])
	
	// add random areas
	for(var i=ds_list_size(areas); i<cols_num*rows_num; i++)
		areas[| i] = choose("planet", "aster", "aster", "empty", "empty")
	// areas sizes
	for(var i=0; i<cols_num; i++) {
		col_sizes[i] = random(3) + 6 - bigger_sector*2
		row_sizes[i] = random(3) + 6 - bigger_sector*2
		global.level_w += col_sizes[i]
		global.level_h += row_sizes[i]
	}
	
	// resize grid
	ds_grid_resize(global.grid, global.level_w, global.level_h)
	
	area_i = 0
	for(var i=0; i<cols_num; i++) {
		area_j = 0
		for(var j=0; j<rows_num; j++) {
			pos = irandom(ds_list_size(areas))
			area_type = areas[| pos]
			ds_list_delete(areas, pos)
			
			switch area_type {
				case "star": {
					inst = instance_create_layer(0, 0, "instances", obj_star)
					ii = area_i + irandom(col_sizes[i] - inst.size_in_universe)
					jj = area_j + irandom(row_sizes[i] - inst.size_in_universe)
					scr_set_grid_pos(ii, jj, inst)
					break
				}
				case "planet": {
					inst = instance_create_layer(0, 0, "instances", obj_planet)
					ii = area_i + irandom(col_sizes[i] - inst.size_in_universe)
					jj = area_j + irandom(row_sizes[i] - inst.size_in_universe)
					scr_set_grid_pos(ii, jj, inst)
					break	
				}
				case "aster": {
					num = floor(col_sizes[i]*row_sizes[j]*(0.4 + random(0.3)))
					repeat num {
						ii = area_i + irandom(col_sizes[i])
						jj = area_j + irandom(row_sizes[i])
						while scr_cell_get_inst(ii, jj) {
							ii = area_i + irandom(col_sizes[i])
							jj = area_j + irandom(row_sizes[i])
						}
						inst = instance_create_layer(0, 0, "instances", obj_asteroid)
						scr_set_grid_pos(ii, jj, inst)
					}
					break
				}
				case "empty": {
					////
					if !protagonist_inst {
						 protagonist_inst = instance_create_layer(scr_x(area_i), scr_y(area_j), "Instances", obj_manned_ship)
					}
					
					num = floor(col_sizes[i]*row_sizes[j]*(0.1 + random(0.1)))
					repeat num {
						ii = area_i + irandom(col_sizes[i])
						jj = area_j + irandom(row_sizes[i])
						while scr_cell_get_inst(ii, jj) {
							ii = area_i + irandom(col_sizes[i])
							jj = area_j + irandom(row_sizes[i])
						}
						inst = instance_create_layer(0, 0, "instances", obj_asteroid)
						scr_set_grid_pos(ii, jj, inst)
					}
					break
				}
			}
			area_j += row_sizes[j]
		}
		area_i += col_sizes[i]
	}
}
	
instance_destroy()	
	
	
//	if !protagonist_inst {
//		instance_create_layer(scr_x(1), scr_y(1), "Instances", obj_manned_ship)
//		///////
//		instance_create_layer(scr_x(2), scr_y(1), "Instances", obj_mob)
//		//////
//	}
//	 aster_num = irandom_range(4, 10)
//	 mob_num = irandom_range(3, 7)
	 
//	 repeat mob_num {
//		 i = irandom_range(1, global.level_w-1)
//		 j = irandom_range(1, global.level_h-1)
//		 while scr_cell_get_inst(i, j) {
//			i = irandom_range(1, global.level_w-1)
//			j = irandom_range(1, global.level_h-1)
//		 }
//		instance_create_layer(scr_x(i), scr_y(j), "Instances", obj_mob)
//	 }
	 
//	 repeat aster_num {
//		 i = irandom(global.level_w)
//		 j = irandom(global.level_h)
//		 while scr_cell_get_inst(i, j) {
//			i = irandom(global.level_w)
//			j = irandom(global.level_h)
//		 }
//		instance_create_layer(scr_x(i), scr_y(j), "Instances", obj_asteroid)
//	 }
//}

//