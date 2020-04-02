
// control keys
key_left = keyboard_check(vk_left)||keyboard_check(ord("A"))
key_right = keyboard_check(vk_right)||keyboard_check(ord("D"))
key_up = keyboard_check(vk_up)||keyboard_check(ord("W"))
key_down = keyboard_check(vk_down)||keyboard_check(ord("S"))
key_shoot = keyboard_check_pressed(ord("Z"))

move_h = key_right - key_left
move_v = key_down - key_up

// moving
dir = point_direction(0, 0, move_h, move_v)

sp_x_to = lengthdir_x(sp_max, dir) * abs(move_h)
sp_y_to = lengthdir_y(sp_max, dir) * abs(move_v)

sp_x = scr_approach(sp_x, sp_x_to, acc)
sp_y = scr_approach(sp_y, sp_y_to, acc)

x += sp_x
y += sp_y

// move obj_player
obj_player.x = x
obj_player.y = y

// shooting
if key_shoot
	eq_weapon.triggered = true