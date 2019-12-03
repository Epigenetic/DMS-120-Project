// Inherit the parent event
event_inherited();

if(self.sprite_index = spr_teddy_lying_down){
	self.waiting = true
}

if(self.waiting){
	if(self.wait-- == 0){
		show_debug_message("create")
		instance_create_depth(0,0,-1000,obj_loss)
	}
}