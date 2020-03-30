///@arg dialog_tree script
instance_create_layer(0, 0, "Sys", obj_ui_dialog_window)
obj_ui_dialog_window.dialog_tree = argument0

obj_manned_ship.control_state = Control.dialog