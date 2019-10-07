if place_meeting(self.x+33,self.y,obj_wall)
	self.hspeed = 0
else if place_meeting(self.x-33,self.y,obj_wall)
	self.hspeed = 0

if place_meeting(self.x,self.y+33,obj_wall)
	self.vspeed = 0
else if place_meeting(self.x,self.y-33,obj_wall)
	self.vspeed = 0