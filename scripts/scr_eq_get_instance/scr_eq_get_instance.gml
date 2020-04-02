///@arg eq_inst
///@arg *host_inst
var host = id
if argument_count == 2
	host = argument[1]

var eq_inst = argument0
eq_inst = instance_create_layer(0, 0, "Instances", eq_inst)
eq_inst.host = host

//// set equipment persistent for protagonist

if host.object_index == obj_manned_ship {
	eq_inst.persistent = true
}

return eq_inst