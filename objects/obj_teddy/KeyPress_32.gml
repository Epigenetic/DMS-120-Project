var xoffset,yoffset

if instance_exists(obj_slash) || instance_exists(obj_slash_heavy)//Don't attack if already attacking
	return;

switch self.sprite_index{ //Create the slash in the right place
	case spr_teddy_up:
	case spr_teddy_up_walk:
	xoffset = 0
	yoffset = -64
	self.sprite_index = spr_teddy_up
	break
	
	case spr_teddy_down:
	case spr_teddy_down_walk:
	xoffset = 0
	yoffset = 64
	break
	
	case spr_teddy_left:
	case spr_teddy_left_walk:
	xoffset = -64
	yoffset = 0
	break
	
	case spr_teddy_right:
	case spr_teddy_right_walk:
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