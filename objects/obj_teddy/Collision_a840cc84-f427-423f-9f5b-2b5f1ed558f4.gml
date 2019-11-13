if other.type == noone 
	return;
switch(other.type){
	case spr_fluff:
	health++
	break
	
	case spr_dmg_up:
	self.powerup = spr_dmg_up
	self.powerup_timer = 500
	break
	
	case spr_speed_up:
	self.powerup = spr_speed_up
	self.powerup_timer = 500
	self.walk_speed = 10
	break
	
	case spr_freeze:
	self.powerup = spr_freeze
	self.powerup_timer = 500
	global.freeze_flag = true
	break
}
instance_destroy(other)