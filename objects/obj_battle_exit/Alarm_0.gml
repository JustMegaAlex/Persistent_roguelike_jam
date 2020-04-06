
if image_xscale < 1 {
	image_xscale += scale_up_sp
	image_yscale += scale_up_sp
	alarm[0] = 1
}
else {
	image_xscale = 1
	image_yscale = 1
}