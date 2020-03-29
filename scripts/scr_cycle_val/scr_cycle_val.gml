///@arg var
///@arg change_val
///@arg max
///@arg *min

var res, mx, mn
mx = argument[2]
mn = 0

if argument_count == 4
	mn = argument[3]

res = argument[0]+argument[1]

if argument[1]
	return res*(res<mx)
return res*(res>=mn) + (mx-1)*(res<mn)