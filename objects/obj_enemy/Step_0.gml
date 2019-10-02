if self.status <= 0
	instance_destroy(self)

if target.x < self.x
	self.hspeed = -2
else if target.x > self.x
	self.hspeed = 2
else
	self.hspeed = 0
	
if target.y+64 < self.y
	self.vspeed = -2
else if target.y+64 > self.y
	self.vspeed = 2
else 
	self.vspeed = 0

if self.vspeed == 0 && self.hspeed == 0{
	if(self.hit_timer--	== 0){
		self.hit_timer = 25
		health--
	}
}