draw_self()
if array_length_1d(choices) {
	draw_set_halign(fa_left)
	draw_text_ext(text_x, text_y, choices[0], 20, text_with)
	for(var i=1; i<array_length_1d(choices); i++) {
		var yc = choice_y - space_between_choices*i
		var yt = choice_text_y - space_between_choices*i
		draw_sprite(spr_ui_dialog_choice, (choice+1)==i, choice_x, yc)
		var choice_txt = choices[i]
		choice_txt = choice_txt[0]
		draw_text(choice_text_x, yt, choice_txt)
	}
}