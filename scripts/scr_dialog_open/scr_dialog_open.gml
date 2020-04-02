///@arg dialog_tree script
instance_create_layer(scr_camx(0), scr_camy(0), "Sys", obj_ui_dialog_window)
obj_ui_dialog_window.dialog_tree = argument0

if instance_exists(obj_manned_ship)
	obj_manned_ship.control_state = Control.dialog