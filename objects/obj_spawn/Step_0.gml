if self.active && --self.spawn_time == 0{
	show_debug_message(self.schedule)
	if self.index <= array_length_2d(self.schedule,0){
		self.spawn_time = self.schedule[1,self.index]
		instance_create_depth(self.x, self.y, self.depth,self.schedule[0,self.index])
		self.index++
	}else{
		instance_destroy(self)
	}
}