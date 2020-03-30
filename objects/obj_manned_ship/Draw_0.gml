
draw_sprite_ext(ui_enrg_bar, 0, ui_enrg_x, ui_enrg_y, energy_capacity, 1, 0, c_white, 1)
draw_sprite(ui_enrg_tail, 0, ui_enrg_x, ui_enrg_y)
draw_sprite_ext(ui_enrg_tail, 0, ui_enrg_left_tail_x, ui_enrg_y, -1, 1, 0, c_white, 1)
for(var i=0; i<energy; i++)
	draw_sprite(ui_enrg_cell, 0, ui_enrg_x+i*ui_enrg_cell_size, ui_enrg_y)

if room = rm_battle {
	draw_sprite_ext(eq_weapon.ui_spr, 0, ui_wp_bar_x, ui_wp_bar_y, eq_weapon.capacity, 1, 0, c_white, 1)
	draw_sprite(eq_weapon.ui_tail, 0, ui_wp_bar_x, ui_wp_bar_y)
	draw_sprite(eq_weapon.ui_left_tail, 0, ui_wp_left_tail_x, ui_wp_bar_y)
	for(var i=0; i<eq_weapon.charge; i++)
		draw_sprite(eq_weapon.ui_cell, 0, ui_wp_bar_x+i*ui_wp_cell_size, ui_wp_bar_y)
		
	draw_sprite(eq_phase.ui_spr, 0, ui_usable_x, ui_usable_y)
	
	draw_sprite_ext(ui_frame_spr, durability-1, ui_frame_x, ui_frame_y, 1, 1, 0, c_red, 1)
	if durability > 1
		draw_sprite_ext(ui_frame_spr, durability-2, ui_frame_x, ui_frame_y, 1, 1, 0, c_yellow, 1)
}

if control_state = Control.jump {
	draw_sprite(spr_pointer, 0, scr_x(jump_i), scr_y(jump_j))
}

draw_self()