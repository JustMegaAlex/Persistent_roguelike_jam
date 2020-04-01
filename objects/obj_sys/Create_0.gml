//////////init gameplay
testing_sector = false

//// ui
// window_set_fullscreen(true)
// ui parts enum
enum Input {
	menu,			// obj_sys controlled states
	world,			//
	dialog,			//
}

input_mode = Input.world

draw_set_font(fnt)

//// game_grid
global.level_w = 15
global.level_h = 10
global.grid_size = 16
global.grid = ds_grid_create(global.level_w, global.level_h)

process_busy = false
inst_index = 0
inst_current = noone

//// ui interacting
ui_mouse_x = window_mouse_get_x()
ui_mouse_y = window_mouse_get_y()

//// inputs
input = false

//// camera
display_set_gui_size(window_get_width(), window_get_height())

scr_debug_INI()


//// space active objects properties
enum Fraction {
	neutral,
	human,
	skreed,
	archon
}

if testing_sector {
	room_goto(rm_testing)
}
else {
	scr_start_game("random", noone)
}

//// late init 
alarm[0] = 2

first_blood = true