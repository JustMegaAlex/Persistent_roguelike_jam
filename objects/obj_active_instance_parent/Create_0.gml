
event_inherited()

ds_list_add(global.queue, id)

//// orient sprite vertically
image_angle = 90

//// control script
general_state = scr_stub

control_script = scr_stub

turn_delay = 2

//// animation sp
anim_move_sp = 1.5

//// properties
invisible = false
static = false
fraction = Fraction.neutral

//// equipment
eq_weapon = noone
eq_phase = noone

//// stats
energy_capacity = 5
energy = energy_capacity
durability_max = 50
durability = durability_max
frame_active = false
jump_dist = 0

//// battle vars
// moving
sp_max = 1.5
sp_x_to = 0	// how sp_x and sp_y change
sp_y_to = 0	//
sp_x = 0
sp_y = 0
acc = 0.1
dir = 0
move_v = 0
move_h = 0

synchronized = 1

//// abilities
list_abilities = ds_list_create()