///@arg eq_inst
var eq_inst = argument0
with eq_inst { temp_copy = instance_copy(false) }

eq_inst.temp_copy.host = id

if eq_inst.object_index == obj_weapon
	if id.object_index != obj_manned_ship {
		eq_inst.temp_copy.sp *= -1
		eq_inst.temp_copy.image_angle = 270
	}

return eq_inst.temp_copy