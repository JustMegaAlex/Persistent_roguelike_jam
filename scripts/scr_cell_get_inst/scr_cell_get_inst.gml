///@arg i
///@arg j
if !((argument0>=0) and (argument0<global.level_w)
	and (argument1>=0) and (argument1<global.level_h))
	return false
return global.grid[# argument0, argument1]