if --self.spawn_time == 0{
	if global.spawn_limit > 0{
		global.spawn_limit--
		self.spawn_time = 200
		instance_create_depth(self.x, self.y+64, self.depth,obj_enemy)
	}
}