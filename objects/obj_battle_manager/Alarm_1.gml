
var dist = 200 + irandom(200)
var dir = irandom(360)

xx = 0

if instance_exists(obj_manned_ship) {
	var xx = obj_manned_ship.x + lengthdir_x(dist, dir)
}

instance_create_layer(xx, 0, "Instances", obj_battle_exit)