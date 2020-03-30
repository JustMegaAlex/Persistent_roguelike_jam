
if keyboard_check(vk_shift) {
	//scr_debug_show_grid(global.grid, 10, 400)
	var grid = global.grid
	var yy = global.VAR_BAR_Y + (global.VAR_BAR_LENGTH+1) * global.VAR_BAR_ROW_DELTA
	for(var i=0; i<ds_grid_width(grid); i+=1)
	    for(var j=0; j<ds_grid_height(grid); j+=1) {
	        draw_text(5+20*i, yy+20*j, string(grid[# i,j]>0))
	    }
}