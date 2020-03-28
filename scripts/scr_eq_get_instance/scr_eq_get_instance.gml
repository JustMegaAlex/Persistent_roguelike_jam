///@arg eq_inst
var eq_inst = argument0
with eq_inst { temp_copy = instance_copy(false) }

eq_inst.temp_copy.host = id

return eq_inst.temp_copy