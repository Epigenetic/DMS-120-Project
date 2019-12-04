//show_debug_message(self.image_index)
if(round(self.image_index) == 20){
	if(!audio_is_playing(sn_sword_unsheath))
		audio_play_sound(sn_sword_unsheath,10,false)
}

if(round(self.image_index) == 27){
	audio_play_sound(sn_level_start,10,false)
	instance_create_depth(1376,256,self.depth,obj_teddy)
	instance_create_depth(0,0,self.depth,obj_manager)
	instance_destroy(self)
}