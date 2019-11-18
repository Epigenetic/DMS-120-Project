//show_debug_message(self.spawn_time)
if self.active && --self.spawn_time <= 0{
	if place_meeting(self.x+64,self.y,obj_enemy) || place_meeting(self.x,self.y-64,obj_enemy) || place_meeting(self.x-64,self.y,obj_enemy){
		return
	}
	show_debug_message(self.schedule)
	show_debug_message(self.index)
	show_debug_message(array_length_2d(self.schedule,0))
	if self.index < array_length_2d(self.schedule,0){
		self.spawn_time = self.schedule[1,self.index]
		instance_create_depth(self.x, self.y, self.depth,self.schedule[0,self.index])
		self.index++
	}else{
		instance_destroy(self)
	}
}