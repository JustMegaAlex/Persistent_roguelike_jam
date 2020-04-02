
event_inherited()

general_state = scr_protagonist_control

turn_delay = 2

enum Control {
	normal,
	special_action,
	recombination,
	dialog,
	jump
}

control_state = Control.normal
//// properties
fraction = Fraction.human

//// stats
jump_dist = 4
jump_horizontal = true
jump_current_dist = 0
jump_i = 0
jump_j = 0

//// equipment
frame_active = true
eq_weapon = scr_eq_get_instance(obj_weap_crusher)
//eq_phase = scr_eq_get_instance(obj_equipment.ph_basic)
eq_phase = noone
//// ui 
battle_cam_y = -30
scr_camera_set_center(0, x, y)

ui_enrg_bar = spr_ui_enrg_middle
ui_enrg_tail = spr_ui_enrg_tail
ui_enrg_cell = spr_ui_enrg_cell
ui_enrg_cell_size = sprite_get_width(ui_enrg_bar)
ui_energy_rel_y = obj_ui_enrg_mockup.y - scr_camy(0)
ui_energy_rel_x = scr_camw(0)*0.5
ui_enrg_y = 0
ui_enrg_x = 0
ui_enrg_left_tail_x = ui_enrg_x+ui_enrg_cell_size*energy_capacity

ui_wp_cell_size = sprite_get_width(eq_weapon.ui_spr)
ui_wp_bar_x = ui_enrg_x
ui_wp_bar_rel_y = obj_ui_weapon_bar_mockup.y - scr_camy(0)
ui_wp_bar_y = scr_camy(0) + ui_wp_bar_rel_y

ui_usable_rel_x = obj_ui_usable_mockup.x - obj_ui_enrg_mockup.x
ui_usable_rel_y = obj_ui_usable_mockup.y - scr_camy(0)
ui_usable_x = ui_enrg_x + ui_usable_rel_x
ui_usable_y = scr_camy(0) + ui_usable_rel_y

ui_frame_spr = spr_ui_farme
ui_frame_rel_x = obj_ui_frame_mockup.x - obj_ui_enrg_mockup.x
ui_frame_rel_y = obj_ui_frame_mockup.y - scr_camy(0)
ui_frame_x = ui_enrg_left_tail_x + ui_frame_rel_x
ui_frame_y = scr_camy(0) + ui_frame_rel_y

ui_dur_spr = spr_ship_carger_durab
ui_dur_scale_spr = spr_ship_carger_durab_scale
ui_dur_rel_x = obj_ui_durab_mockup.x - obj_ui_enrg_mockup.x
ui_dur_rel_y = obj_ui_durab_mockup.y - scr_camy(0)
ui_dur_x = ui_enrg_left_tail_x + ui_dur_rel_x
ui_dur_y = scr_camy(0) + ui_dur_rel_y
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	