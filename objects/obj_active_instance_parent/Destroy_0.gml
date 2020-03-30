
scr_cell_clear(id)

if instance_exists(eq_weapon)
	instance_destroy(eq_weapon)
	
if instance_exists(eq_phase)
	instance_destroy(eq_phase)
	
if room == rm_battle
	scr_end_battle()