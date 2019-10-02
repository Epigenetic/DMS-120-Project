if place_meeting(self.x+33,self.y,obj_enemy) && self.hspeed > 0
	self.hspeed = 0
else if place_meeting(self.x-33,self.y,obj_enemy) && self.hspeed < 0
	self.hspeed = 0

if place_meeting(self.x,self.y+33,obj_enemy) && self.vspeed > 0
	self.vspeed = 0
else if place_meeting(self.x,self.y-33,obj_enemy) && self.vspeed < 0
	self.vspeed = 0