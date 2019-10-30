if not self.countdown
	return;
	
if(self.timer-- > 0)
	return;
	
if room_exists(room_next(room))
	room_goto_next()
else
	room_goto(rm_title)