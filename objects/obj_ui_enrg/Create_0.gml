
cell_size = sprite_width
tail = spr_ui_enrg_tail
cell = spr_ui_enrg_cell
if instance_exists(obj_manned_ship) {
	cell_num = obj_manned_ship.energy_capacity
	rel_y = y - view_yport[0]
	rel_x = view_xport[0] + view_wport[0]*0.5 - cell_size*cell_num*0.5
}
else {// late init
	alarm[0] = 1
}