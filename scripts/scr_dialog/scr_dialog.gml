
if dialog_start {
	start = ["I'm listening",
		["Give up", "threat"],
		["Let's trade", "trade"],
		["Hve you seen any archons nearby?", "archons"]]
	
		threat = ["You not mess up with me",
			["Just kidding, pilot", "kidding"],
			["Oh really?", "threat1"]]
				kidding = ["Nice joke",
					["Goodbie", false]]
				threat1 = ["No time for this",
					["So boring", false]]
				
		trade =  ["Am I looking like a damn carger?",
			["Looking like piece of trash", "threat"],
			["Sorry man", "sorry"]]
				sorry = ["Please, stop bothering",
					["Goodbie", false]]
				
		archons = ["Yeah, we are patroling them",
			["So where is it?", "where"],
			["Damn", "damn"]]
				where = ["It was a joke",
					["Oh", false]]
				damn = ["Yeah, it's dangerous here",
					["Better go away", false]]
					
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














