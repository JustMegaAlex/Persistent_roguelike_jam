//// clear current sector
if instance_exists(obj_space_instance_parent)
	with obj_space_instance_parent 
		if object_index != obj_manned_ship { instance_destroy() }
ds_grid_clear(global.grid, 0)

if sector_type == "random" {
	
	bigger_sector = scr_chance(0.5)
	cols_num = 2 + bigger_sector
	rows_num = 2 + bigger_sector
	areas = ds_list_create()
	// default areas
	//scr_fill_list_from_array(areas, ["star", "planet", "planet", "aster", "aster", "empty"])
	scr_fill_list_from_array(areas, ["star", "planet", "aster", "empty"])
	// add random areas
	for(var i=ds_list_size(areas); i<cols_num*rows_num; i++)
		areas[| i] = choose("planet", "aster", "aster", "empty", "empty")
	ds_list_shuffle(areas)
	
	// areas sizes
	for(var i=0; i<cols_num; i++) {
		col_sizes[i] = irandom(3) + 6 - bigger_sector*2
		row_sizes[i] = irandom(3) + 6 - bigger_sector*2
		global.level_w += col_sizes[i]
		global.level_h += row_sizes[i]
	}
	
	// resize grid
	ds_grid_resize(global.grid, global.level_w, global.level_h)
	ds_grid_resize(global.grid_special, global.level_w, global.level_h)
	
	area_i = 0
	pos = 0
	for(var i=0; i<cols_num; i++) {
		area_j = 0
		for(var j=0; j<rows_num; j++) {
			area_type = areas[| pos]
			pos++
			
			switch area_type {
				case "star": {
					ii = area_i + irandom(col_sizes[i])
					jj = area_j + irandom(row_sizes[i])
					scr_try_create(ii, jj, obj_star)
					break
				}
				case "planet": {
					ii = area_i + irandom(col_sizes[i])
					jj = area_j + irandom(row_sizes[i])
					scr_try_create(ii, jj, obj_planet)
					break
				}
				case "aster": {
					num = floor(col_sizes[i]*row_sizes[j]*(0.3 + random(0.2)))
					repeat num {
						scr_set_grid_pos_in_region(area_i, area_j,
												area_i + col_sizes[i]-1,
												area_j + col_sizes[j]-1,
												obj_asteroid)
					}
					break
				}
				case "empty": {
					////
					if !protagonist_inst {
						 protagonist_inst = scr_set_grid_pos_in_region(area_i, area_j,
												area_i + col_sizes[i]-1,
												area_j + col_sizes[j]-1,
												obj_manned_ship)
					}
					
					num = floor(col_sizes[i]*row_sizes[j]*(0.1 + random(0.1)))
					repeat num {
						scr_set_grid_pos_in_region(area_i, area_j,
												area_i + col_sizes[i]-1,
												area_j + col_sizes[j]-1,
												obj_asteroid)
					}
					break
				}
			}
			area_j += row_sizes[j]
		}
		area_i += col_sizes[i]
	}
}

for(var i=0; i<15; i++) {
	scr_set_grid_pos_in_region(0, 0, global.level_w-1, global.level_h-1, obj_mob)
}
	
instance_destroy()	