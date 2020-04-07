
//// weapon control
if room == rm_battle {
	if triggered  {
		triggered = false
		if charge and !alarm[1] {
			// create projectile
			var prj = instance_create_layer(host.x, host.y, "Instances", proj) 
			prj.image_angle = host.image_angle
			prj.damage = dmg_levels[level]
			prj.sp = sp
			prj.host = host
			alarm[1] = shoot_delay
			charge--
			if !charge
				if scr_change_energy(-energy_consumption, host)
					charge = capacity
		}
	}
	alarm[0] = 1
}