/// @description Make the spawners
// Spawn tables are enemy to spawn in first array, how long to wait before next spawn in the next second
// i.e. schedule[0,x] is what the xth enemy is enemy and schedule[1,x] is how long to wait before spawning the x+1th enemy

switch(room){

case rm_level1:
	var inst = instance_create_depth(170,room_height/2,self.depth,obj_spawn)
	inst.schedule[0,0] = obj_enemy
	inst.schedule[0,1] = obj_enemy
	inst.schedule[0,2] = obj_enemy
	inst.schedule[0,3] = obj_enemy
	inst.schedule[0,4] = obj_enemy
	inst.schedule[0,5] = obj_enemy

	inst.schedule[1,0] = 200
	inst.schedule[1,1] = 300
	inst.schedule[1,2] = 200
	inst.schedule[1,3] = 300
	inst.schedule[1,4] = 200
	inst.schedule[1,5] = 300
	inst.active = true

	inst = instance_create_depth(room_width-170,room_height/2,self.depth,obj_spawn)
	inst.schedule[0,0] = obj_enemy
	inst.schedule[0,1] = obj_enemy
	inst.schedule[0,2] = obj_enemy
	inst.schedule[0,3] = obj_enemy
	inst.schedule[0,4] = obj_enemy
	inst.schedule[0,5] = obj_enemy

	inst.schedule[1,0] = 200
	inst.schedule[1,1] = 300
	inst.schedule[1,2] = 200
	inst.schedule[1,3] = 300
	inst.schedule[1,4] = 200
	inst.schedule[1,5] = 300
	inst.active = true

	inst = instance_create_depth(room_width/2,room_height-170,self.depth,obj_spawn)
	inst.schedule[0,0] = obj_enemy
	inst.schedule[0,1] = obj_enemy
	inst.schedule[0,2] = obj_enemy
	inst.schedule[0,3] = obj_enemy
	inst.schedule[0,4] = obj_enemy
	inst.schedule[0,5] = obj_boss

	inst.schedule[1,0] = 300
	inst.schedule[1,1] = 300
	inst.schedule[1,2] = 200
	inst.schedule[1,3] = 300
	inst.schedule[1,4] = 200
	inst.schedule[1,5] = 300
	inst.active = true
	break;

	case rm_level2:
	var inst = instance_create_depth(220,room_height/2,self.depth,obj_spawn)
	inst.schedule[0,0] = obj_twig
	inst.schedule[0,1] = obj_enemy
	inst.schedule[0,2] = obj_enemy
	inst.schedule[0,3] = obj_enemy
	inst.schedule[0,4] = obj_enemy
	inst.schedule[0,5] = obj_twig
	inst.schedule[0,6] = obj_boss

	inst.schedule[1,0] = 200
	inst.schedule[1,1] = 300
	inst.schedule[1,2] = 200
	inst.schedule[1,3] = 300
	inst.schedule[1,4] = 200
	inst.schedule[1,5] = 200
	inst.schedule[1,6] = 300
	inst.active = true

	inst = instance_create_depth(room_width-220,room_height/2,self.depth,obj_spawn)
	inst.schedule[0,0] = obj_twig
	inst.schedule[0,1] = obj_enemy
	inst.schedule[0,2] = obj_enemy
	inst.schedule[0,3] = obj_enemy
	inst.schedule[0,4] = obj_enemy
	inst.schedule[0,5] = obj_twig
	inst.schedule[0,6] = obj_boss

	inst.schedule[1,0] = 200
	inst.schedule[1,1] = 300
	inst.schedule[1,2] = 200
	inst.schedule[1,3] = 300
	inst.schedule[1,4] = 200
	inst.schedule[1,5] = 200
	inst.schedule[1,6] = 300
	inst.active = true

	inst = instance_create_depth(room_width/2,room_height-170,self.depth,obj_spawn)
	inst.schedule[0,0] = obj_twig
	inst.schedule[0,1] = obj_enemy
	inst.schedule[0,2] = obj_enemy
	inst.schedule[0,3] = obj_enemy
	inst.schedule[0,4] = obj_enemy
	inst.schedule[0,5] = obj_twig
	inst.schedule[0,6] = obj_boss

	inst.schedule[1,0] = 200
	inst.schedule[1,1] = 300
	inst.schedule[1,2] = 200
	inst.schedule[1,3] = 300
	inst.schedule[1,4] = 200
	inst.schedule[1,5] = 200
	inst.schedule[1,6] = 300
	inst.active = true
	break; 
	
	case rm_level3:
	var inst = instance_create_depth(220,room_height/2,self.depth,obj_spawn)
	inst.schedule[0,0] = obj_boss
	inst.schedule[0,1] = obj_enemy
	inst.schedule[0,2] = obj_enemy
	inst.schedule[0,3] = obj_twig
	inst.schedule[0,4] = obj_enemy
	inst.schedule[0,5] = obj_twig
	inst.schedule[0,6] = obj_enemy
	inst.schedule[0,7] = obj_boss

	inst.schedule[1,0] = 200
	inst.schedule[1,1] = 300
	inst.schedule[1,2] = 200
	inst.schedule[1,3] = 300
	inst.schedule[1,4] = 200
	inst.schedule[1,5] = 200
	inst.schedule[1,6] = 200
	inst.schedule[1,7] = 400
	inst.active = true

	inst = instance_create_depth(room_width-220,room_height/2,self.depth,obj_spawn)
	inst.schedule[0,0] = obj_boss
	inst.schedule[0,1] = obj_enemy
	inst.schedule[0,2] = obj_enemy
	inst.schedule[0,3] = obj_twig
	inst.schedule[0,4] = obj_enemy
	inst.schedule[0,5] = obj_twig
	inst.schedule[0,6] = obj_enemy
	inst.schedule[0,7] = obj_boss

	inst.schedule[1,0] = 200
	inst.schedule[1,1] = 300
	inst.schedule[1,2] = 200
	inst.schedule[1,3] = 300
	inst.schedule[1,4] = 200
	inst.schedule[1,5] = 200
	inst.schedule[1,6] = 200
	inst.schedule[1,7] = 400
	inst.active = true

	inst = instance_create_depth(room_width/2,room_height-220,self.depth,obj_spawn)
	inst.schedule[0,0] = obj_boss
	inst.schedule[0,1] = obj_enemy
	inst.schedule[0,2] = obj_enemy
	inst.schedule[0,3] = obj_twig
	inst.schedule[0,4] = obj_enemy
	inst.schedule[0,5] = obj_twig
	inst.schedule[0,6] = obj_enemy
	inst.schedule[0,7] = obj_boss

	inst.schedule[1,0] = 200
	inst.schedule[1,1] = 300
	inst.schedule[1,2] = 200
	inst.schedule[1,3] = 300
	inst.schedule[1,4] = 200
	inst.schedule[1,5] = 200
	inst.schedule[1,6] = 200
	inst.schedule[1,7] = 400
	inst.active = true
	break;
}

// have rumble in 3rd level
// bunny at third level
// twigs start at 2nd level
// third level have every enemy and chest rumbling
// 
