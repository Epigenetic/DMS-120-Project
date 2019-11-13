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
	switch(self.sprite_index){
		case spr_teddy_up_walk:
		self.sprite_index = spr_teddy_up
		break
		
		case spr_teddy_down_walk:
		self.sprite_index = spr_teddy_down
		break
		
		case spr_teddy_left_walk:
		self.sprite_index = spr_teddy_left
		break
		
		case spr_teddy_right_walk:
		self.sprite_index = spr_teddy_right
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