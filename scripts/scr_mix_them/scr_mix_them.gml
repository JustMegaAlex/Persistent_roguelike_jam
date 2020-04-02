
if dialog_start {
	start = ["Yaaaaah, mixing, mixing, mixing",
		["Mixing?", "mix1"]]
	mix1 = ["I will mix incredible things!",
		["Next", "mix2"]]
	mix2 = ["(Actually, he won't. Mixing module is not ready yet. Tough times)",
		["XD", "mix3"]]
	mix3 = ["Hope you enjoy playing this",
		["No problem, man", false]]
		
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














