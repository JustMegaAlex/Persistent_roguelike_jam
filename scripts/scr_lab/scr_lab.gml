test = 1
if dialog_start {
	start = ["Finally! I got my space labship up and running",
		["Press Z to next", "mix1"]]
	mix1 = ["Time to make some crazy mixxxxxessss...",
		["Press Z to next", "mix2"]]
	mix2 = ["(rubbing his hands satisfied) Those pesky purple akien starships will be gooood material",
		["Press Z to next", "mix3"]]
	mix3 = ["Crash into pieces! Extract some quality essence!",
		["Next", "tip0"]]
	tip0 = ["Ahh.. almost forgot. Tips.",
		["Next", "tip1"]]
	tip1 = ["Welcome to the Next Sector.",
		["Next...", "tip2"]]
	tip2 = ["Use arrows to navigate the labship.",
		["...", "tip3"]]
	tip3 = ["If you move into an akien ship you will attack it.",
		["Yep", "tip4"]]
	tip4 = ["You also can use some special abilities by pressing Q button",
		["Got it", "tip5"]]
	tip5 = ["Go ahead test them yourself",
		["Thnaks, dude!", false]]
		
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














