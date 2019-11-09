if self.status <= 0
	instance_destroy(self)

//show_debug_message(string(point_distance(self.x,self.y,target.x,target.y)) + " " + string(self.sprite_width))
if(point_distance(self.x,self.y,target.x,target.y) < self.sprite_width*2){
	if(self.hit_timer--	== 0){
		self.hit_timer = 200
		health -= self.damage
	}
}

mp_potential_step(self.target.x,self.target.y,self.speedval,false)

self.image_angle = point_direction(self.x,self.y,target.x,target.y) - 90
