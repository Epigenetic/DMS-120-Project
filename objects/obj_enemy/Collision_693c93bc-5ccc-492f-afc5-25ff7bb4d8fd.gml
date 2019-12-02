health -= self.damage
instance_destroy(self)
target.sprite_index = spr_bed_hit
audio_play_sound(sn_kidhit,10,false)