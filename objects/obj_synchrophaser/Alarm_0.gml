
if room == rm_battle {
	if keyboard_check_pressed(ord("C")) {
		switch usable {
			case "swarm rocket": {
				var inst = instance_create_layer(host.x, host.y, "Instances", obj_swarm_rocket)
				inst.host = host
				break
			}
		}
	}
	alarm[0] = 1
}