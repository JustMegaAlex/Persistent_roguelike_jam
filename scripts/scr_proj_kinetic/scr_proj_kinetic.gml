
y -= sp
var got_him = instance_place(x, y, get_him)
if got_him {
	got_him.durability -= damage
	
	if !got_him.durability {
		instance_destroy(got_him)
		if !instance_find(get_him, 0) {
			scr_end_battle()
		}
	}
	
	instance_destroy()
}