if other.type == noone 
	return;
switch(other.type){
	case spr_fluff:
	if(health < 6){
		health++
	}
	audio_play_sound(sn_healthpickup,10,false)
	break
	
	case spr_dmg_up:
	audio_play_sound(sn_powerpickup,10,false)
	self.powerup = spr_dmg_up
	self.powerup_timer = 500
	break
	
	case spr_speed_up:
	audio_play_sound(sn_speedpickup,10,false)
	self.powerup = spr_speed_up
	self.powerup_timer = 500
	self.walk_speed = 10
	break
	
	case spr_freeze:
	audio_play_sound(sn_freezepickup,10,false)
	self.powerup = spr_freeze
	self.powerup_timer = 500
	global.freeze_flag = true
	break
}
instance_destroy(other)