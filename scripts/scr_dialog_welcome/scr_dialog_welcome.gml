
if dialog_start {
	start  = ["Welcome to the Next Sector.",
		["Next...", "tip2"]]
	tip2 = ["Use arrows to navigate the labship.",
		["...", "tip3"]]
	tip3 = ["If you move into an akien ship you will attack it.",
		["Yep", "tip6"]]
	tip6 = ["While in battle: Z to shoot, E - retreat",
		["Awesome", "tip4"]]
	tip4 = ["You also can use some special abilities by pressing Q button",
		["Got it", "tip5"]]
	tip5 = ["Go ahead test them yourself",
		["Thanks, dude!", false]]
		
	choices = start
	dialog_start = false
}
				
				
if obj_manned_ship.key_action {
	if is_array(choices) {
		choices = choices[choice+1]
		choices = choices[1]
		choice = 0
	}
}














