if(self.draw_time > 0){
	draw_sprite_stretched_ext(self.sprite_index,0,0,0,room_width,room_height,c_white,(50-self.draw_time)/50.0)
}else{
	draw_sprite_stretched(self.sprite_index,0,0,0,room_width,room_height)
}