///@desc get relative angle between two angles
///@arg first_angle
///@arg second_angle

var rel_dir = argument1 - argument0;

//поправка rotationDir
if(abs(rel_dir)>180) rel_dir = (360 - abs(rel_dir)) * -sign(rel_dir)

return rel_dir