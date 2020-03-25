///@descr swap 2 grid cells
///@arg i1
///@arg j1
///@arg i2
///@arg j2

var buf
buf = global.grid[# argument0, argument1]
global.grid[# argument0, argument1] = global.grid[# argument2, argument3]
global.grid[# argument2, argument3] = buf
