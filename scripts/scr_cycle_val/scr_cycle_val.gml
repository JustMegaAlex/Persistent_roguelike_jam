///@arg var
///@arg change_val
///@arg max
///@arg *min

var res, mx, mn
mx = argument[2]
mn = 0

if argument_count == 4
	mn = argument[3]

res = argument0+argument1

if argument1
	return res*(res<mx)
return res*(res>=mn) + (mx-1)*(res<mn)