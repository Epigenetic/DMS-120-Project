enum loot{
	fluff,
	sword,
	shield
}

self.loot_table[0] = loot.fluff
self.spawn_timer = 50
if(room == rm_level1 || room == rm_level2)
	self.nasty_time = 100
else
	self.nasty_time = -1