if(!self.reached)
	reached = mp_potential_step_object(1650,300,5,obj_toychest)
if(self.reached)
	self.sprite_index = spr_teddy_up
else
	self.sprite_index = spr_teddy_up_walk