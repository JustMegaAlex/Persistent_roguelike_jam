
//// choose cation interface
infc_icon = spr_ui_choice_icon
infc_rad = 20
infc_rot = 0	// rotary sliding icons
infc_rot_to = 0

list_actions = ds_list_create()

//// form available actions list
ds_list_add(list_actions, "recombination")
ds_list_add(list_actions, "dialog")
ds_list_add(list_actions, "warp")

actions_num = ds_list_size(list_actions)

choice = 0

infc_icon_angle = 360/actions_num
infc_rot_sp = infc_icon_angle/10