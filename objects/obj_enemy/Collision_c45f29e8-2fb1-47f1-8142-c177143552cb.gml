if place_meeting(self.x+(self.sprite_width*self.image_xscale)/4+1,self.y,obj_teddy)
	self.vspeed = -1*self.speedval
else if place_meeting(self.x-(self.sprite_width*self.image_xscale)/4+1,self.y,obj_teddy)
	self.vspeed = self.speedval

if place_meeting(self.x,self.y+(self.sprite_height*self.image_yscale)/4+1,obj_teddy)
	self.hspeed = -1*self.speedval
else if place_meeting(self.x,self.y-(self.sprite_height*self.image_yscale)/4+1,obj_teddy)
	self.hspeed = self.speedval