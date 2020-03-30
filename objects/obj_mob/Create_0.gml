
event_inherited()

general_state = scr_mob_control

frame_active = true

//// equipment
eq_weapon = scr_eq_get_instance(obj_equipment.wp_crusher)
eq_phase = scr_eq_get_instance(obj_equipment.ph_basic)

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