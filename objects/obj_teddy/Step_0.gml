if instance_exists(obj_slash){
	self.hspeed = 0
	self.vspeed = 0
}

if (keyboard_check(vk_shift) || keyboard_check(vk_rshift)){
	var inst = instance_find(obj_toychest,0)
	if distance_to_object(inst) < 64 && inst.spawn_timer > 0{
		//show_debug_message("I am here " + string(inst.spawn_timer))
		inst.spawn_timer--
	}
}