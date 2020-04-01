///@arg i
///@arg j
///@arg inst
var inst = id

if argument_count == 3
	inst = argument[2]

inst.i = argument[0]
inst.j = argument[1]

for(var ii=0; ii<inst.size_in_universe; ii++) 
	for(var jj=0; jj<inst.size_in_universe; jj++)
		scr_set_cell(inst.i+ii, inst.j+jj, inst)