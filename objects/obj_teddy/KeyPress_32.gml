var xoffset,yoffset

if instance_exists(obj_slash) || instance_exists(obj_slash_heavy)//Don't attack if already attacking
	return;

switch self.sprite_array{ //Create the slash in the right place
	case up_arr:
	case up_walk_arr:
	xoffset = 0
	yoffset = -64
	break
	
	case down_arr:
	case down_walk_arr:
	xoffset = 0
	yoffset = 64
	break
	
	case left_arr:
	case left_walk_arr:
	xoffset = -64
	yoffset = 0
	break
	
	case right_arr:
	case right_walk_arr:
	xoffset = 64
	yoffset = 0
	break
	
	default:
	show_debug_message("Error in obj_teddy determining where to spawn obj_slash: " + string(self.sprite_index))
	break
}

if(self.powerup == spr_dmg_up)
	instance_create_depth(self.x + xoffset,self.y + yoffset,self.depth,obj_slash_heavy)
else
	instance_create_depth(self.x + xoffset,self.y + yoffset,self.depth,obj_slash)