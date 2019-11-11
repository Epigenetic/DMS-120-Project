enum loot{
	fluff,
	sword,
	shield
}

self.loot_table[0] = loot.fluff
self.spawn_timer = 5
self.last_hit = noone
if(room == rm_level2 || room == rm_level3)
	self.nasty_time = 100
else
	self.nasty_time = -1