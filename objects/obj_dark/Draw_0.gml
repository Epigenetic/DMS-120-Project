/// @description Make screen darker

draw_set_color(c_black)
draw_set_alpha(.5)
draw_rectangle(0,0,room_width,room_height,false)
draw_set_alpha(1)