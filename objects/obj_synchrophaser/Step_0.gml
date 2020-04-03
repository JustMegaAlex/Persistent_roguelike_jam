
if keyboard_check_pressed(ord("C")) {
	switch usable {
		case "swarm rocket": {
			for(var i=0; i<sr_num; i++) {
				var inst = instance_create_layer(host.x, host.y, "Instances", obj_swarm_rocket)
				inst.dir = sr_spawn_angle + i*sr_disperse_angle + random(sr_disperse_angle)
			}
			break
		}
	}
}