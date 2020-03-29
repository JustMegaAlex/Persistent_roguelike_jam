
event_inherited()

general_state = scr_protagonist_control

//// properties
fraction = Fraction.human

//// equipment
eq_weapon = scr_eq_get_instance(obj_equipment.wp_crusher)

//// ui 
ui_enrg_bar = spr_ui_enrg_middle
ui_enrg_tail = spr_ui_enrg_tail
ui_enrg_cell = spr_ui_enrg_cell
ui_enrg_cell_size = sprite_get_width(ui_enrg_bar)
ui_energy_rel_y = obj_ui_enrg_mockup.y - scr_camy(0)
ui_energy_rel_x = scr_camw(0)*0.5
ui_enrg_y = 0
ui_enrg_x = 0

ui_wp_cell_size = sprite_get_width(eq_weapon.ui_spr)
ui_wp_bar_x = ui_enrg_x
ui_wp_bar_rel_y = obj_ui_weapon_bar_mockup.y - scr_camy(0)
ui_wp_bar_y = scr_camy(0) + ui_wp_bar_rel_y