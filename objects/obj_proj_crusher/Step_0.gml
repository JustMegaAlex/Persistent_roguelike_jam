
y += lengthdir_y(sp, image_angle)
var got_him = instance_place(x, y, obj_active_instance_parent)
if got_him and got_him != host {
	scr_bring_damage(got_him, damage)
	instance_destroy()
}