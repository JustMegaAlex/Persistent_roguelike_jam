
for(var i=0; i<actions_num; i++) {
	icon_x = obj_manned_ship.x + lengthdir_x(infc_rad, 90+infc_rot+infc_icon_angle*i)
	icon_y = obj_manned_ship.y + lengthdir_y(infc_rad, 90+infc_rot+infc_icon_angle*i)
	draw_sprite(infc_icon, 0, icon_x, icon_y)
	draw_set_halign(fa_center)
}