////////// init gameplay
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
global.grid_special = ds_grid_create(global.level_w, global.level_h)

//// instances queue list
global.queue = ds_list_create()

process_busy = false
queue_pos = 0
inst_current = noone

//// ui interacting
ui_mouse_x = window_mouse_get_x()
ui_mouse_y = window_mouse_get_y()

//// inputs
input = false

//// camera
display_set_gui_size(window_get_width(), window_get_height())

scr_debug_INI()
debug_on = false
debug_show = debug_on

//// space active objects properties
enum Fraction {
	neutral,
	human,
	skreed,
	archon
}

global.sizes = ds_map_create()
global.sizes[? obj_star] = 4
global.sizes[? obj_planet] = 3
global.sizes[? obj_active_instance_parent] = 1
global.sizes[? obj_asteroid] = 1

if testing_sector {
	room_goto(rm_testing)
	//// do grid init in rm_testing
}
else {
	scr_start_game("random", noone)
}

//// late init
alarm[0] = 2

first_blood = true

//// sound
audio_master_gain(1)
audio_sound_gain(snd_rocketlaunch, 0.3, 0)
audio_sound_gain(snd_shot, 0.2, 0)
audio_sound_gain(snd_ship_explotion, 1.2, 0)
audio_sound_gain(snd_bit_space, 0.6, 0)

// main theme
audio_play_sound(snd_bit_space, 1, true)