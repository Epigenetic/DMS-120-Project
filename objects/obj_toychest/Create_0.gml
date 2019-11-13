enum loot{
	fluff,
	dmg,
	spd,
	freeze
}

self.loot_table[0] = loot.freeze
//self.loot_table[1] = loot.dmg
//self.loot_table[2] = loot.spd
//self.loot_table[3] = loot.freeze
self.spawn_timer = 5
self.last_hit = noone
if(room == rm_level2 || room == rm_level3)
	self.nasty_time = 100
else
	self.nasty_time = -1