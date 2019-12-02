if instance_exists(obj_slash){
	self.hspeed = 0
	self.vspeed = 0
}

if(self.toy_flag){
	self.hspeed = 0
	self.vspeed = 0
	self.toy_flag = false
}

if(self.vspeed == 0 && self.hspeed == 0){
	switch(self.sprite_array){
		case up_walk_arr:
		self.sprite_array = up_arr
		break
		
		case down_walk_arr:
		self.sprite_array = down_arr
		break
		
		case left_walk_arr:
		self.sprite_array = left_arr
		break
		
		case right_walk_arr:
		self.sprite_array = right_arr
		break
	}	
}

if(self.powerup_timer >= 0){
	self.powerup_timer --
	if self.powerup_timer == -1{
		switch(self.powerup){
			case spr_dmg_up:
			self.powerup = noone
			break
			
			case spr_speed_up:
			self.walk_speed = 5
			self.powerup = noone
			break
			
			case spr_freeze:
			instance_activate_object(obj_enemy)
			self.powerup = noone
			global.freeze_flag = false
			break
		}
	}
}

switch(self.powerup){
	case noone:
	self.sprite_index = self.sprite_array[0]
	break
	
	case spr_dmg_up:
	self.sprite_index = self.sprite_array[1]
	break
	
	case spr_speed_up:
	self.sprite_index = self.sprite_array[2]
	break
	
	case spr_freeze:
	self.sprite_index = self.sprite_array[3]
	break
}