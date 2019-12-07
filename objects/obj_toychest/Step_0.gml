if(self.sprite_index == spr_toychest_open){
	if self.image_index > self.image_number -1
		self.sprite_index = spr_toychest
		audio_stop_sound(sn_chestcreak)
}

if(instance_number(obj_spawn) != 0){
	if(self.sprite_index != spr_toychest_shaking){
		if(self.nasty_time > 0){
			self.nasty_time--
		}else if (self.nasty_time == 0){
			//show_debug_message("Changed sprite")
			if(instance_number(obj_toy) < 1){
				self.sprite_index = spr_toychest_shaking
				if(!audio_is_playing(sn_chestcreak) && room == rm_level3)
					audio_play_sound(sn_chestcreak,10,true)
				self.nasty_time = 200
			}else{
				self.nasty_time = 200
			}
		}
	}else{
		if(--self.nasty_time == 0){
			if(collision_point(self.x,self.y+self.sprite_height*1.5,obj_teddy,false,true) || collision_point(self.x,self.y+self.sprite_height*1.5,obj_enemy,false,true)){
				self.nasty_time++
			}else{
				self.sprite_index = spr_toychest_open
				instance_create_depth(self.x,self.y + self.sprite_height*1.5,self.depth,obj_toy)
				self.nasty_time = floor(random_range(200,20)*20)
			}
		}
	}
}

if(self.spawn_timer == 0){
	var pick = self.loot_table[random_range(0,array_length_1d(self.loot_table))]
	switch(pick){
		case loot.fluff:
		var pickup = instance_create_depth(self.x,self.y + self.sprite_height,self.depth,obj_pickup)
		pickup.type = spr_fluff
		pickup.sprite_index = spr_fluff
		break
		
		case loot.dmg:
		var pickup = instance_create_depth(self.x,self.y + self.sprite_height,self.depth,obj_pickup)
		pickup.type = spr_dmg_up
		pickup.sprite_index = spr_dmg_up
		break
		
		case loot.spd:
		var pickup = instance_create_depth(self.x,self.y + self.sprite_height,self.depth,obj_pickup)
		pickup.type = spr_speed_up
		pickup.sprite_index = spr_speed_up
		break
		
		case loot.freeze:
		var pickup = instance_create_depth(self.x,self.y + self.sprite_height,self.depth,obj_pickup)
		pickup.type = spr_freeze
		pickup.sprite_index = spr_freeze
		break
	}
	self.spawn_timer = 2
}
