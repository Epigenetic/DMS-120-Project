var d = point_distance(mouse_x, mouse_y, self.x, self.y) 

if (d < self.sprite_width/2){
	show_debug_message("Got here")
	game_end()
}