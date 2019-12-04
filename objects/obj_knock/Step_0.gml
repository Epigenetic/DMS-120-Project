if(timer++ == 100){
	instance_create_depth(960,-192,self.depth,obj_level_start)
	instance_destroy(self)
}