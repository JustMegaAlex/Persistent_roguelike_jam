
//// init myself on grid
x = scr_x(round(x/global.grid_size))
y = scr_y(round(y/global.grid_size))

i = scr_i(x)
j = scr_j(y)

scr_set_sell(i, j, id)