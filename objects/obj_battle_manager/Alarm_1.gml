
var dist = 200 + irandom(200)
var dir = irandom(360)
if instance_exists(obj_manned_ship) {
	var xx = obj_manned_ship.x + lengthdir_x(dist, dir)
	var yy = obj_manned_ship.y + lengthdir_y(dist, dir)
}

instance_create_layer(xx, yy, "Instances", obj_battle_exit)