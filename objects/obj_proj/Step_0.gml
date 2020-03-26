
if !host_ship
	script_execute(action)
else {
	if keyboard_check_pressed(ord("Z"))
		instance_copy(true)
	x = host_ship.x
	y = host_ship.y
}