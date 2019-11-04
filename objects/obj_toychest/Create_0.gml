enum loot{
	fluff,
	sword,
	shield
}

self.loot_table[0] = loot.fluff
self.spawn_timer = 50

if(room == rm_level2 || room == rm_level3){
	self.nasty_time = floor(random_range(0,10) * 20);
}else{
	self.nasty_time = -1
}