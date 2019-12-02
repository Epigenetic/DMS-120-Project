audio_play_sound(sn_swordswish,10,false)

var teddy = instance_find(obj_teddy,0)

var spr_array = [spr_slash,spr_slash_damage,spr_slash_speed,spr_slash_freeze]

//Face the slash the right way
switch(teddy.sprite_array[0]){
	case spr_teddy_up:
	case spr_teddy_up_walk:
	self.image_angle = 0
	break
	
	case spr_teddy_down:
	case spr_teddy_down_walk:
	self.image_angle=180
	break
	
	case spr_teddy_left:
	case spr_teddy_left_walk:
	self.image_angle = 90
	break
	
	case spr_teddy_right:
	case spr_teddy_right_walk:
	self.image_angle = -90
	break
	
	default:
	show_debug_message("Error in obj_slash determining direction to face")
}

switch(teddy.powerup){
	case noone:
	self.sprite_index = spr_array[0]
	break
	
	case spr_dmg_up:
	self.sprite_index = spr_array[1]
	break
	
	case spr_speed_up:
	self.sprite_index = spr_array[2]
	break
	
	case spr_freeze:
	self.sprite_index = spr_array[3]
	break
}

self.time = 20