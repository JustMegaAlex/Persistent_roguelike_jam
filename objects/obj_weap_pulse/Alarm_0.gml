
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
			// play sound
			audio_play_sound(snd_shot, 0, false)
		}
	}
	alarm[0] = 1
	
	// recharge
	if charge < capacity {
		if charge_sub >= 1 {
			if scr_change_energy(-energy_consumption, host) > 0 {
				charge += 1
				charge_sub = 0
			}
		}
		charge_sub += charge_sp	
	}
}