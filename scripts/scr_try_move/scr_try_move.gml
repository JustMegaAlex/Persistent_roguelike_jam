///@arg delta_i
///@arg delta_j
///@arg inst
var inst = id

if argument_count == 3
	inst = argument[2]
	
var target_i = inst.i+argument[0]
var target_j = inst.j+argument[1]

if !((target_i>=0) and (target_i<global.level_w)
	and (target_j>=0) and (target_j<global.level_h))
	return false

if !target_i or !target_j or !(global.level_w-target_i) or !(global.level_h-target_j)
	return false

if !global.grid[# target_i, target_j] {
	scr_swap_cells(inst.i, inst.j, target_i, target_j)
	scr_set_grid_pos(target_i, target_j, inst)
	return true
}
return false