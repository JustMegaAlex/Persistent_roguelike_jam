
event_inherited()

general_state = scr_mob_control

//// ai behaviour init

enum Behav {
	wonder,
	patrol,
	ambush,
}

behaviour = Behav.patrol //choose(Behav.wonder, Behav.patrol, Behav.ambush)
pursue_target = noone
vision_range = 6

// patrol vars
on_patrol = false
patrol_path_len = 0
patrol_xpoints = -1
patrol_ypoints = -1
patrol_point_to = 0
patrol_sergment_dist = 0
patrol_segment_len = 0
patrol_dir = 0

frame_active = true

//// equipment
eq_weapon = scr_eq_get_instance(obj_weap_crusher)
//eq_phase = scr_eq_get_instance(obj_equipment.ph_basic)
eq_phase = noone

enum Battle {
	idle,
	move,
	shoot,
	manuver
}

battle_state = Battle.idle
b_oponent_dist = 400
manuver_dir = 30
manuver_time = 30
manuvering = 0
dir = 270


durability = 40

//// late init
alarm[1] = 1