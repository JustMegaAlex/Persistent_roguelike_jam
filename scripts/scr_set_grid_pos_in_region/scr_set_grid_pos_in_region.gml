///@arg i0
///@arg j0
///@arg i1
///@arg j1
///@arg inst_or_obj
///@arg *attempts

var i0, j0, i1, j1, ii, jj

i0 = argument[0]
j0 = argument[1]
i1 = argument[2]
j1 = argument[3]

// check errors
if i0 > i1 or j0 > j1 {
	show_error("wrong input: i0="+string(i0) + " j0="+string(j0)
				+ " i1="+string(i1) + " j1="+string(j1) + " "
				+ object_get_name(inst.object_index), false)
}

// optional argument
var attempts = 1000
if argument_count == 6
	attempts = argument[5]

var inst = argument[4]

// create new instance
var new_inst = false
if object_exists(inst) {
	inst = instance_create_layer(0, 0, "instances", inst)
	new_inst = true
}

repeat attempts {
	ii = i0 + irandom(i1 - i0)
	jj = j0 + irandom(j1 - j0)
	if scr_try_move(ii, jj, inst)
		return true
}

// no free cell found
if new_inst 
	instance_destroy(inst)
return false