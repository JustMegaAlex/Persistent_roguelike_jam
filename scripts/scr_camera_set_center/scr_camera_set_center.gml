///@func scr_cameraSetCenter(camera,x,y)
///@desc set view center
///@arg camera
///@arg {real} x
///@arg {real} y

var cam_x = max(0, min(scr_x(global.level_w)-scr_camw(argument0), argument1-scr_camw(argument0)*0.5))
var cam_y = max(0, min(scr_y(global.level_h)-scr_camw(argument0), argument2-scr_camh(argument0)*0.5))

camera_set_view_pos(view_camera[argument0], cam_x, cam_y)