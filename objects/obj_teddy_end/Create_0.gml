self.image_xscale = 2
self.image_yscale = 2
audio_play_sound(sn_death,10,false)
var teddy = instance_find(obj_teddy,0)
self.x = teddy.x
self.y = teddy.y
instance_destroy(teddy)