//show_debug_message("My spawn timer: " + string(self.spawn_timer))
if self.spawn_timer == 0 && instance_number(obj_pickup) == 0{
	self.spawn_timer = 50
	var pick = self.loot_table[random_range(0,array_length_1d(self.loot_table))]
	switch(pick){
		case loot.fluff:
		var pickup = instance_create_depth(self.x+48,self.y,self.depth,obj_pickup)
		pickup.type = spr_fluff
		pickup.sprite_index = spr_fluff
		break
		
		case loot.shield:
		
		case loot.sword:
	}
}