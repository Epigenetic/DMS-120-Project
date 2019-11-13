if(self.sprite_index == spr_bed_hit){
	if(self.hit_time-- == 0){
		self.sprite_index = spr_bed
		self.hit_time = 50
	}
}