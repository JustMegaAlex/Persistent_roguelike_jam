
if dialog_start {
	start  = ["Welcome to the Next Sector.",
		["Next...", "tip2"]]
	tip2 = ["Use arrows to navigate the ship.",
		["...", "tip3"]]
	tip3 = ["If you move into an hostile ship you will attack it. Or they will attack you...",
		["Yep", "tip4"]]
	tip6 = ["While in battle: Z to shoot, C - use special weapon",
		["Awesome", "tip4"]]
	tip4 = ["While not in battle you can use some special abilities by pressing Q button",
		["Got it", "tip5"]]
	tip5 = ["\"Jump\" might be very useful",
		["Got it", "tip6"]]
	tip6 = ["Go ahead test them yourself",
		["Thanks, dude!", false]]
		
	choices = start
	dialog_start = false
}
				
				
if key_action {
	if is_array(choices) {
		choices = choices[choice+1]
		choices = choices[1]
		choice = 0
	}
}














