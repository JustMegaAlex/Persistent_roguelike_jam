
//// debug scripts
scr_debug_scripts_update()

scr_debug_show_var("inst_index", inst_index)
scr_debug_show_var("inst", inst_current)
scr_debug_show_var("process busy", process_busy)

if keyboard_check(vk_shift)
	scr_debug_show_grid(global.grid, 10, 500)