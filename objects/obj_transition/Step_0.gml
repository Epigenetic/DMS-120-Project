self.current_frame++

if(self.current_frame > self.maxframes){
	instance_activate_all()
	instance_destroy(self)
}

if (self.current_frame == 2) { 
    self.newroom = surface_create(room_width,room_height);
    surface_copy(self.newroom,0,0,application_surface)
}