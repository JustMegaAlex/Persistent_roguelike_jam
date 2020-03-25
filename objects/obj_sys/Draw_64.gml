
//// debug scripts
scr_debug_scripts_update()

scr_debug_show_var("inst", instance_current)
scr_debug_show_var("process busy", process_busy)

if keyboard_check(vk_shift)
	scr_debug_show_grid(global.grid, 10, 10)