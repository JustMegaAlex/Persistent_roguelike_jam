
event_inherited()

//// energy bar
ui_enrg_y = scr_camy(0) + ui_energy_rel_y
ui_enrg_x = scr_camx(0) + ui_energy_rel_x - ui_enrg_cell_size*energy_capacity*0.5
ui_enrg_left_tail_x = ui_enrg_x+ui_enrg_cell_size*energy_capacity

//// weapon bar
ui_wp_bar_x = ui_enrg_x
ui_wp_bar_y = scr_camy(0) + ui_wp_bar_rel_y
ui_wp_left_tail_x = ui_wp_bar_x + ui_wp_cell_size*eq_weapon.capacity