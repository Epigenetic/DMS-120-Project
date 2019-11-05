//show_debug_message("My spawn timer: " + string(self.spawn_timer))
//show_debug_message("Nasty timer " + string(self.nasty_time))
show_debug_message("Sprite: " + string(self.image_index))
if(self.sprite_index != spr_toychest_shake){
	if(self.nasty_time > 0){
		self.nasty_time--
	}else if (self.nasty_time == 0){
		show_debug_message("Changed sprite")
		self.sprite_index = spr_toychest_shake
		self.nasty_time = 100
	}
}else{
	if(--self.nasty_time == 0){
		self.sprite_index = spr_toychest
		instance_create_depth(self.x+self.sprite_width,self.y,self.depth,obj_enemy)
	}
}

if self.spawn_timer == 0 && instance_number(obj_pickup) == 0{
	self.spawn_timer = 50
	var pick = self.loot_table[random_range(0,array_length_1d(self.loot_table))]
	switch(pick){
		case loot.fluff:
		var pickup = instance_create_depth(self.x+self.sprite_width,self.y,self.depth,obj_pickup)
		pickup.type = spr_fluff
		pickup.sprite_index = spr_fluff
		break
		
		case loot.shield:
		
		case loot.sword:
	}
}