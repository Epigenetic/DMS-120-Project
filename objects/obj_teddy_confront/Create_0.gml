self.reached = false //have we made it to the door?
var teddy = instance_find(obj_teddy,0)
self.x = teddy.x
self.y = teddy.y
instance_destroy(teddy)
self.image_xscale = 2
self.image_yscale = 2