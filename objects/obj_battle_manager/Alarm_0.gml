
if !battle_end {
	//// init battle
	oponent_battle = instance_create_layer(obj_opponent.x, obj_opponent.y, "Instances", obj_mob)
	
	with instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_manned_ship) {
		control_script = scr_protagonist_battle
		parent_proj = instance_create_layer(x, y, layer, obj_proj)
		parent_proj.sprite_index = eq_weapon.sprite_index
		parent_proj.sp = eq_weapon.sp
		parent_proj.action = eq_weapon.action
		parent_proj.host_ship = id
		parent_proj.visible = false
		parent_proj.damage = eq_weapon.dmg_levels[weapon_level]
		parent_proj.get_him = obj_battle_manager.oponent_battle
	}
	
	with oponent_battle {
		control_script = scr_mob_battle
		image_angle = 270
	}
}
else {
	//// end battle
	if oponent_dead {
		scr_cell_clear(oponent_world)
		instance_destroy(oponent_world)
	}
	if protagonist_dead {
		scr_cell_clear(obj_manned_ship)
		instance_destroy(obj_manned_ship)
	}
	instance_destroy()
}