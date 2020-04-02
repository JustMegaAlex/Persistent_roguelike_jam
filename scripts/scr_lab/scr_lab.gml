
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
				
				
if key_action {
	if is_array(choices) {
		choices = choices[choice+1]
		choices = choices[1]
		choice = 0
	}
}














