if place_meeting(self.x+(self.sprite_width*self.image_xscale)/4,self.y,obj_wall)
	self.hspeed = 0
else if place_meeting(self.x-(self.sprite_width*self.image_xscale)/4,self.y,obj_wall)
	self.hspeed = 0

if place_meeting(self.x,self.y+(self.sprite_height*self.image_yscale)/4,obj_wall)
	self.vspeed = 0
else if place_meeting(self.x,self.y-(self.sprite_height*self.image_yscale)/4,obj_wall)
	self.vspeed = 0