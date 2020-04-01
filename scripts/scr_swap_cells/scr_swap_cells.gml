///@descr swap 2 grid cells
///@arg i1
///@arg j1
///@arg i2
///@arg j2

var buf
buf = scr_get_cell(argument0, argument1)
scr_set_cell(argument0, argument1, scr_get_cell(argument2, argument3))
scr_set_cell(argument2, argument3, buf)