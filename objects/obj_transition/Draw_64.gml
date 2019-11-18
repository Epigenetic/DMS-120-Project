if(self.current_frame < 50){
	draw_set_alpha(1.0)
	draw_surface(self.oldroom,0,0)
}else{
	draw_set_alpha(1.0 - (self.current_frame -50)/50)
	draw_surface(self.oldroom,0,0)
	draw_set_alpha(1.0)
}
