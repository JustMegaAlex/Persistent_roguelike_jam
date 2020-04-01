///@arg delta_i
///@arg delta_j
///@arg inst
var inst = id

if argument_count == 3
	inst = argument[2]
	
var target_i = inst.i+argument[0]
var target_j = inst.j+argument[1]

return scr_try_move(target_i, target_j, inst)