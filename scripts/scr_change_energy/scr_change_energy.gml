///@arg energy_to_change
///@arg *inst
var inst = id
if argument_count == 2
	inst = argument[1]
var change = argument[0]
if change {
	change = min(change, inst.energy_capacity - inst.energy)
	inst.energy += change
	return change
}
else {
	if change <= inst.energy {
		inst.energy -= change
		return change
	}
}
return false