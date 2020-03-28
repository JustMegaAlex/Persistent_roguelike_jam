
y -= sp
var got_him = instance_place(x, y, obj_active_instance_parent)
if got_him and got_him != host {
	got_him.durability -= damage
	
	if !got_him.durability {
		instance_destroy(got_him)
	}
	
	instance_destroy()
}