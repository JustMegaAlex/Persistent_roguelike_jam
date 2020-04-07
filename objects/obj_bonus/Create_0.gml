
image_speed = 0

map_types = ds_map_create()

map_types[? "energy"] = 0
map_types[? "sr"] = 1
map_types[? "sb"] = 2

type = choose("energy", "energy", "energy", "energy", "sr", "sb", "sr")

image_index = map_types[? type]

ds_map_destroy(map_types)