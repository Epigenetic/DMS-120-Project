self.current_frame=0
self.maxframes = 100
self.oldroom = surface_create(room_width,room_height)
surface_copy(self.oldroom,0,0,application_surface)
if(room != rm_fin)
	room_goto_next()
else
	room_goto(rm_title)
instance_deactivate_all(true)