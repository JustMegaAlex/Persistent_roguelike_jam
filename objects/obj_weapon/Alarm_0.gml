
//// weapon control
a = keyboard_check_pressed(ord("Z"))
b = host.object_index!=obj_manned_ship

shoot = keyboard_check_pressed(ord("Z"))*(host.object_index==obj_manned_ship) or triggered

if room == rm_battle {
	switch type {
		case "crusher": {
			if shoot  {
				
				triggered = false
				
				if charge and !alarm[1] {
					// create projectile
					 var proj = instance_copy(true) 
					 with proj { 
						x = host.x
						y = host.y
						visible = true
						persistent = false
						damage = dmg_levels[level]
					}
					proj.action = proj_action
					alarm[1] = shoot_delay
					charge--
					if !charge
						if scr_spend_energy(energy_consumption, host)
							charge = capacity
				}
			}
		}
	}
	alarm[0] = 1
}