switch(room){
	case rm_level1:
	self.sprite_index = spr_knocking_closet
	break
	
	case rm_level2:
	self.sprite_index = spr_knocking_window
	break
	
	case rm_level3:
	self.sprite_index = spr_knocking_chest
	break
}
self.timer = 0
audio_play_sound(sn_door_knock,10,false)