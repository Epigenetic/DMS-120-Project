//show_debug_message("My spawn timer: " + string(self.spawn_timer))
//show_debug_message("Nasty timer " + string(self.nasty_time))
//show_debug_message("Sprite: " + string(self.image_index))
if(instance_number(obj_spawn) != 0){
	if(self.sprite_index != spr_toychest_shaking){
		if(self.nasty_time > 0){
			self.nasty_time--
		}else if (self.nasty_time == 0){
			//show_debug_message("Changed sprite")
			if(instance_number(obj_toy) < 1){
				self.sprite_index = spr_toychest_shaking
				self.nasty_time = 200
			}else{
				self.nasty_time = 200
			}
		}
	}else{
		if(--self.nasty_time == 0){
			if(collision_rectangle(self.x-64,self.y+self.sprite_height,self.x+64,self.y+64+self.sprite_height*2,obj_enemy,false,true)
				|| collision_rectangle(self.x-64,self.y+self.sprite_height,self.x+64,self.y+64+self.sprite_height*2,obj_teddy,false,true)){
				self.nasty_time++
			}else{
				self.sprite_index = spr_toychest
				instance_create_depth(self.x,self.y + self.sprite_height*1.5,self.depth,obj_toy)
				self.nasty_time = floor(random_range(0,20)*20)
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
	self.spawn_timer = 5
}