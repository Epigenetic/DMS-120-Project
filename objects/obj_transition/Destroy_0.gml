//instance_destroy(self.oldroom)
//instance_destroy(self.newroom)
if(room == rm_transition1 || room == rm_transition2 || room == rm_transition3 || room == rm_fin){
	instance_create_depth(0,0,self.depth,obj_transition)
}