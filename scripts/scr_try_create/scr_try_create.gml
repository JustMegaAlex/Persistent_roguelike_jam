///@arg delta_i
///@arg delta_j
///@arg obj

var obj = argument[2]

var target_i = argument[0]
var target_j = argument[1]


var size = global.sizes[? obj]

// check placement out of bounds
if (scr_get_cell(target_i, target_j)==1) or (scr_get_cell(target_i+size, target_j+size)==1){
	return false
}

// check region is free
for(var ii=0; ii<size; ii++) 
	for(var jj=0; jj<size; jj++)
		if scr_get_cell(target_i+ii, target_j+jj) {
			return false
		}

var inst = instance_create_layer(scr_x(target_i), scr_y(target_j), "Instances", obj)
// set grid cells' values
scr_set_grid_pos(target_i, target_j, inst)
// set instance's position
scr_set_pos(target_i, target_j, inst)

return true