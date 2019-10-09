/// @description Make the spawners
// Spawn tables are enemy to spawn in first array, how long to wait before next spawn in the next second

var inst = instance_create_depth(16,room_height/2,self.depth,obj_spawn)
inst.schedule[0,0] = obj_enemy
inst.schedule[0,1] = obj_enemy
inst.schedule[0,2] = obj_enemy
inst.schedule[0,3] = obj_enemy
inst.schedule[0,4] = obj_enemy

inst.schedule[1,0] = 200
inst.schedule[1,1] = 200
inst.schedule[1,2] = 200
inst.schedule[1,3] = 200
inst.schedule[1,4] = 200
inst.active = true
//show_debug_message("First one made")

inst = instance_create_depth(room_width-16,room_height/2,self.depth,obj_spawn)
inst.schedule[0,0] = obj_enemy
inst.schedule[0,1] = obj_enemy
inst.schedule[0,2] = obj_enemy
inst.schedule[0,3] = obj_enemy
inst.schedule[0,4] = obj_enemy

inst.schedule[1,0] = 200
inst.schedule[1,1] = 200
inst.schedule[1,2] = 200
inst.schedule[1,3] = 200
inst.schedule[1,4] = 200
inst.active = true
//show_debug_message("Second one made")

inst = instance_create_depth(room_width/2,room_height-32,self.depth,obj_spawn)
inst.schedule[0,0] = obj_enemy
inst.schedule[0,1] = obj_enemy
inst.schedule[0,2] = obj_enemy
inst.schedule[0,3] = obj_enemy
inst.schedule[0,4] = obj_boss

inst.schedule[1,0] = 200
inst.schedule[1,1] = 200
inst.schedule[1,2] = 200
inst.schedule[1,3] = 200
inst.schedule[1,4] = 200
inst.active = true
//show_debug_message("Third one made")