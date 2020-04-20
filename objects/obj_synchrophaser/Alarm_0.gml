
if room == rm_battle {
	if keyboard_check_pressed(ord("C")) and usable_num and !reload_time {
		switch usable {
			case "swarm rocket": {
				var inst = instance_create_layer(host.x, host.y, "Instances", obj_swarm_rocket)
				inst.host = host
				reload_time = sr_reload_time
				usable_num--
				// play sound
				
				audio_play_sound(snd_rocketlaunch, 0, false)
				break
			}
		}
	}
	alarm[0] = 1
}

reload_time--