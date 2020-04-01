///@arg i
///@arg j
///@arg val

if !((argument0>=0) and (argument0<global.level_w)
	and (argument1>=0) and (argument1<global.level_h))
	show_error("grid index out of bounds ["+string(global.level_w)+","+string(global.level_h) +"]: "
				+ string(argument0)+","+string(argument1) +"]", false)
	
global.grid[# argument0, argument1] = argument2
