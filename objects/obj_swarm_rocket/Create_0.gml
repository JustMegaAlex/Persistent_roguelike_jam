
event_inherited()

host = noone
homing = false
spin_rot_sp = 6
sp_max = 4
sp_x = 0
sp_y = 0
sp_x_to = 0
sp_y_to = 0
sp_spinning = 1
image_angle = random(360)
spinning_time = 40 + random(30)
homing_rot_sp = 0.5
acc = 0.1
homing_disperse_angle = 10

//// spawning
spawn_num_total = 8
spawn_num = spawn_num_total
spawn_angle = 210
spawn_disperse_angle = 15
dir = 0
dir_correction = 0
dir_correction_step = 5
alarm[1] = 1

//// set target
target = obj_mob
explosion_timer = 30
timer_trigger_dist = sp_max*explosion_timer