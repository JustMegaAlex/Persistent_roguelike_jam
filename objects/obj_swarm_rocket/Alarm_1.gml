
dir = spawn_angle + spawn_disperse_angle*spawn_num + random(spawn_disperse_angle)
dir_correction = dir_correction_step*(spawn_num_total*0.5 - spawn_num)
sp_x = lengthdir_x(sp_spinning, dir)
sp_y = lengthdir_y(sp_spinning, dir)

if spawn_num {
	var inst = instance_create_layer(x, y, "Instances", obj_swarm_rocket)
	inst.spawn_num = --spawn_num
	inst.host = host
}