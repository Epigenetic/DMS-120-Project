var d = point_distance(mouse_x, mouse_y, self.x + (self.sprite_width/2), self.y + (self.sprite_height)/2) 
if (d < self.sprite_width/2) { 
	room_goto(rm_test)
}