if self.status <= 0
	instance_destroy(self)

if(!global.freeze_flag){
	mp_potential_step(self.target.x,self.target.y,self.speedval,false)
}

self.image_angle = point_direction(self.x,self.y,target.x,target.y) - 90

if(self.sound_time-- == 0){
	self.sound_time = 300
	audio_play_sound(self.sound,10,false)
}