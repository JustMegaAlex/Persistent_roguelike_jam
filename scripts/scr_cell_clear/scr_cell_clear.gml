///@arg i
///@arg j

var size = 1

if argument_count == 1 {
	var target_i = argument[0].i
	var target_j = argument[0].j
	var size = argument[0].size_in_universe
}
else {
	var target_i = argument[0]
	var target_j = argument[1]
}

// clear current grid placement region
for(var ii=0; ii<size; ii++) 
	for(var jj=0; jj<size; jj++)
		scr_set_cell(target_i+ii, target_j+jj, 0)