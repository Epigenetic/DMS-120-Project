// Inherit the parent event
event_inherited();

var target = instance_find(obj_teddy,0)
if(point_distance(self.x,self.y,target.x,target.y) < 64){
	target.toy_flag = true
}