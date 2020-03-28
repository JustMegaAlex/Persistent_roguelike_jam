
draw_sprite_ext(sprite_index, 0, x, y, cell_num, 1, 0, c_white, 1)
draw_sprite(tail, 0, x, y)
draw_sprite_ext(tail, 0, x+cell_size*cell_num, y, -1, 1, 0, c_white, 1)
for(i=0; i<obj_manned_ship.energy; i++)
	draw_sprite(cell, 0, x+i*cell_size, y)