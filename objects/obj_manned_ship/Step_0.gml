
event_inherited()

scr_camera_set_center(0, x, y)

if room == rm_battle
	scr_battlecam_set_center(0, x, y+battle_cam_y)
	
//// energy bar
ui_enrg_y = scr_camy(0) + ui_energy_rel_y
ui_enrg_x = scr_camx(0) + ui_energy_rel_x - ui_enrg_cell_size*energy_capacity*0.5
ui_enrg_left_tail_x = ui_enrg_x+ui_enrg_cell_size*energy_capacity

//// weapon bar
ui_wp_bar_x = ui_enrg_x
ui_wp_bar_y = scr_camy(0) + ui_wp_bar_rel_y
ui_wp_left_tail_x = ui_wp_bar_x + ui_wp_cell_size*eq_weapon.capacity

//// usable cell
ui_usable_x = ui_enrg_x + ui_usable_rel_x
ui_usable_y = scr_camy(0) + ui_usable_rel_y

//// durability
ui_dur_x = ui_enrg_left_tail_x + ui_dur_rel_x
ui_dur_y = scr_camy(0) + ui_dur_rel_y

