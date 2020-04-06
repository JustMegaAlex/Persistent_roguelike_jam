
with obj_active_instance_parent {
	if abs(x - obj_battle_exit.x) < obj_battle_exit.contact_dist
		synchronized -= obj_battle_exit.desync_sp
}