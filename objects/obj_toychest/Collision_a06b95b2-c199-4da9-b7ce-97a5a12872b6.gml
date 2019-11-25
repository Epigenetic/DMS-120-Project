if(self.last_hit != other){
	audio_play_sound(sn_chesthit,10,false)
	self.last_hit = other
	self.spawn_timer--
}