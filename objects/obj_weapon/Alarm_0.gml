
//// weapon control

if room == rm_battle {
	switch type {
		case "crusher": {
			if keyboard_check_pressed(ord("Z")) {
				 var proj = instance_copy(true) 
				 with proj { 
					x = host.x
					y = host.y
					visible = true
					persistent = false
					damage = dmg_levels[level]
				}
				proj.action = proj_action
			}
		}
	}
	alarm[0] = 1
}