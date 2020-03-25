///@arg delta_i
///@arg delta_j
///@arg inst
var inst = id

if argument_count == 3
	inst = argument[2]
	
var target_i = inst.i+argument[0]
var target_j = inst.j+argument[1]

if !global.grid[# target_i, target_j] {
	scr_swap_cells(inst.i, inst.j, target_i, target_j)
	scr_set_grid_pos(target_i, target_j, inst)
	return true
}
return false