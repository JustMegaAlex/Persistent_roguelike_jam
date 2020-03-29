
choice_change = obj_manned_ship.key_down - obj_manned_ship.key_up

choice = scr_cicle_val(choice, choice_change, choice_num)

script_execute(dialog_tree)