if(self.last_hit != other){
	audio_play_sound(sn_chesthit,10,false)
	audio_stop_sound(sn_chestcreak)
	self.last_hit = other
	self.spawn_timer--
}