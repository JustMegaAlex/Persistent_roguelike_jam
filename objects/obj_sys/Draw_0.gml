
if keyboard_check(vk_shift) {
	for(var i=0; i<ds_grid_width(global.grid); i+=1)
	    for(var j=0; j<ds_grid_height(global.grid); j+=1) {
	        draw_text(scr_x(i), scr_y(j), string(global.grid[# i,j]>0))
	    }
}