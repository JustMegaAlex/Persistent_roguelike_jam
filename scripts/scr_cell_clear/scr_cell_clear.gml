///@arg i
///@arg j


if argument_count == 1 {
	global.grid[# argument[0].i, argument[0].j] = 0
	return
}

scr_set_cell(argument[0], argument[1], 0 )