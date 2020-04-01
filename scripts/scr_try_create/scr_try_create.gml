///@arg delta_i
///@arg delta_j
///@arg obj

var obj = argument[2]

var target_i = argument[0]
var target_j = argument[1]

var inst = instance_create_depth(scr_x(target_i), scr_y(target_i), "Instances", obj)

var size = inst.size_in_universe

// check placement out of bounds
if (scr_get_cell(target_i, target_i)==1) or (scr_get_cell(target_i+size, target_i+size)==1){
	instance_destroy(inst)
	return false
}

// check region is free
for(var ii=0; ii<size; ii++) 
	for(var jj=0; jj<size; jj++)
		if scr_get_cell(target_i+ii, target_j+jj) {
			instance_destroy(inst)
			return false
		}

// set grid cells' values
scr_set_grid_pos(target_i, target_j, inst)
// set instance's position
scr_set_pos(target_i, target_j, inst)

return true