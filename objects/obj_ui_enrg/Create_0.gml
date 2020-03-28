
cell_size = sprite_width
tail = spr_ui_enrg_tail
cell = spr_ui_enrg_cell
rel_y = y - scr_camy(0)
if instance_exists(obj_manned_ship) {
	cell_num = obj_manned_ship.energy_capacity
}
else {// late init
	alarm[0] = 1
}