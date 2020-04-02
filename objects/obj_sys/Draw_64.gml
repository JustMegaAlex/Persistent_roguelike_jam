
//// debug scripts
scr_debug_scripts_update()

scr_debug_show_var("instances", instance_count)

if instance_exists(inst_current)
	scr_debug_show_var("curr instance", object_get_name(inst_current.object_index))
else
	scr_debug_show_var("curr instance", "bubble destryed")

scr_debug_show_var("process busy", process_busy)

var list = ""
for(var i=0; i<ds_list_size(global.queue); i++)
	list += string(global.queue[| i] mod 10000) + ", "

scr_debug_show_var("queue", list)