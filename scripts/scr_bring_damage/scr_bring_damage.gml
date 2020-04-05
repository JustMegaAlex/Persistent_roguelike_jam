///@arg inst_to_damage
///@arg dmg

argument0.durability -= argument1

if !argument0.durability
	instance_destroy(argument0)