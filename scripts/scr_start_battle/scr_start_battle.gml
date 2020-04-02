///@arg inst_to_fight

with instance_create_layer(0, 0, "Sys", obj_battle_manager) {
	//// take all we need to rm_battle
	oponent_world = argument0
	oponent_world.persistent = true
	if instance_exists(oponent_world.eq_weapon)
		oponent_world.eq_weapon.persistent = true
	if instance_exists(oponent_world.eq_phase)
		oponent_world.eq_phase.persistent = true
}

room_goto(rm_battle)