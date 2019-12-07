if (timer % 20 == 0){
	self.visible = self.visible ? false : true
}

if(timer++ == 100){
	instance_create_depth(988,-22,self.depth,obj_level_start)
	instance_destroy(self)
}