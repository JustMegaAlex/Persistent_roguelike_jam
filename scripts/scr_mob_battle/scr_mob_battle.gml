
var distv = obj_player.y - y
var disth = x - obj_player.x

switch battle_state {
	case Battle.idle: {
		if scr_chance(0.5)
			eq_weapon.triggered = true
		manuvering = manuver_time
		battle_state = Battle.move
		break
	}
	case Battle.shoot: {
		
		if abs(disth) < 5 {
			eq_weapon.triggered = true
			if eq_weapon.charge and beh_agressive == true
				break
			battle_state = Battle.manuver
		}
		
		if distv > b_oponent_dist * 0.25
			dir = 270 + manuver_dir*sign(disth)
		else 
			dir = 180 * (disth >= 0)
			
		break
	}
	case Battle.move: {
		if !manuvering--
			battle_state = Battle.manuver
		if !eq_weapon.alarm[1] and disth < b_oponent_dist * 0.25
			battle_state = Battle.shoot
			
		break
	}
	case Battle.manuver: {
		if abs(disth) > b_oponent_dist*2
			dir = 180 * (disth >= 0)
		else if distv > b_oponent_dist
			dir = 270
		else if distv < b_oponent_dist * 0.25 {
			if scr_chance(0.5) { dir = 90 + manuver_dir*sign(disth) }
			else { dir = 90 - manuver_dir*sign(disth) }
		}
		else if scr_chance(0.2)
			dir = 180 * (disth < 0)
		else 
			dir = 180 * (disth >= 0)
		
		battle_state = Battle.move
		manuvering = manuver_time
				
		break
	}
}

sp_x_to = lengthdir_x(sp_max, dir)
sp_y_to = lengthdir_y(sp_max, dir)

sp_x = scr_approach(sp_x, sp_x_to, acc)
sp_y = scr_approach(sp_y, sp_y_to, acc)

x += sp_x
y += sp_y