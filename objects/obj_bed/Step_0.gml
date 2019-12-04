show_debug_message(instance_number(obj_knock))
if(instance_number(obj_knock) > 0){
	self.sprite_index = spr_while_knocking
}else if(!self.start && instance_number(obj_knock) == 0){
	self.sprite_index = spr_bed
		self.start = true
}

if(self.sprite_index == spr_bed_hit){
	if(self.hit_time-- == 0){
		self.sprite_index = spr_bed
		self.hit_time = 50
	}
}