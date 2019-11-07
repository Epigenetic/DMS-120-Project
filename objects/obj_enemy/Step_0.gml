if self.status <= 0
	instance_destroy(self)

//show_debug_message(point_distance(self.x,self.y,target.x,target.y))
if(point_distance(self.x,self.y,target.x,target.y) < 256){
	if(self.hit_timer--	== 0){
		self.hit_timer = 25
		health -= self.damage
	}
}

mp_potential_step(self.target.x,self.target.y,self.speedval,false)

self.image_angle = point_direction(self.x,self.y,target.x,target.y) - 90
