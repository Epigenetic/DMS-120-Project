switch(room){
	case rm_level1:
	if (round(self.image_index) == 4){
		self.image_speed = 0
		instance_create_depth(0,0,self.depth,obj_transition)
	}
	break
	
	case rm_level2:
	if(round(self.image_index) == 18){
		audio_play_sound(sn_throw,10,false)	
	}
	if(round(self.image_index) == 23){
		self.image_speed = 0
		audio_play_sound(sn_kid_screams,10,false)
		instance_create_depth(0,0,self.depth,obj_transition)
	}
	break
	
	case rm_level3:
	if(self.teddy.reached)
		self.sprite_index = spr_gma_night3
	if(round(self.image_index) == 5 && self.sprite_index == spr_gma_night3){
		self.image_speed = 0
		audio_play_sound(sn_grandma_scream,10,false)
		instance_create_depth(0,0,self.depth,obj_transition)
	}
	break
}