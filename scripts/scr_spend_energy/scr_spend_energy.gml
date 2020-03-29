///@arg energy_to_spend
///@arg *inst
var inst = id
if argument_count == 2
	inst = argument[1]
var spend = argument[0]
if spend <= inst.energy {
	inst.energy -= spend
	return spend
}
return false