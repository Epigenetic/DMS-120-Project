show_debug_message("Alarm")
if room_exists(room_next(room))
	room_goto_next()
else
	room_goto(rm_title)