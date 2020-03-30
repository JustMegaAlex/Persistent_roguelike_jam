
x = scr_camx(0) + (scr_camw(0) - sprite_width)*0.5
y = scr_camy(0) + (scr_camh(0) - sprite_height)*0.5

dialog_start = true
text = ""
var x_indent = 8
text_with = sprite_width - x_indent
text_x = x + x_indent * 0.5
text_y = y + 8

//// choices
choice_x = text_x
choice_text_x = choice_x + 8
choice_y = y + sprite_height - 10
choice_text_y = choice_y - 3
space_between_choices = 16

//// dialog tree vars
choice = 0
choices = []
first_choice = false