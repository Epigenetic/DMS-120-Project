switch(room){
	case rm_level1:
	audio_play_sound(sn_door_open,10,false)
	self.sprite_index = spr_gma_night1
	break
	
	case rm_level2:
	audio_play_sound(sn_door_open,10,false)
	self.sprite_index = spr_gma_night2
	break
	
	case rm_level3:
	self.teddy = instance_create_depth(self.x,self.y,self.depth,obj_teddy_confront)
	break
}