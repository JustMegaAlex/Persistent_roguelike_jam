
//// weapon control

if room == rm_battle {
	switch type {
		case "crusher": {
			if keyboard_check_pressed(ord("Z")) {
				with instance_copy(true) { 
					x = host.x
					y = host.y
				}
			}
		}
	}
}