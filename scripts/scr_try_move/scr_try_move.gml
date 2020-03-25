///@arg delta_i
///@arg delta_j
///@arg inst
var inst = id

if argument_count == 3
	inst = argument[3]
	
var target_i = inst.i+argument[0]
var target_j = inst.j+argument[1]

if !global.grid[# target_i, target_j] {
	scr_swap_cells(inst.i, inst.j, target_i, target_j)
	inst.i = target_i
	inst.j = target_j
	inst.alarm[0] = 1
	return true
}
return false