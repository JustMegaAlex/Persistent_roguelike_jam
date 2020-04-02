
if dialog_start {
	start1 = ["Well, anything happens. Press R to restart",
		["Okay", false]]
	start2 = ["Boooom. That was tough. Press R to restart",
		["Will do", false]]
	start3 = ["What? Really...?",
		["Press Z to next", "go"]]
	go = ["Nevermind, just press R",
		["Ahhh..", false]]

	choices = choose(start1, start3, start2)
	dialog_start = false
}
				
				
if key_action {
	if is_array(choices) {
		choices = choices[choice+1]
		choices = choices[1]
		choice = 0
	}
}
